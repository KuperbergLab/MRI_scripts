function surfrend_canonical(conname, connum, swd, thresh, exthresh)

% function surfrend_canonical(conname, xSPM)
%
% Convert an SPM contrast into a w-file freesurfer overlay
% The SPM Canonical Brain is used (see README files for more details) 
%
% conname - contrast name (will be used for the output overlay)
% SPM - pass SPM variable for spm99 (Note that you need to add VOX to the
%                                    SPM struct or use the default 3mm) 
%            xSPM variable for spm2
%
%
%
%_______________________________________________________________________
% @(#)surfrend_canonical.m	V1.0 CVS $Author: itamarkahn $ $Date: 2008/04/03 13:10:38 $ $Name:  $ $RCSfile: surfrend_canonical.m,v $ $Revision: 1.14 $

[SPMver, SPMc] = spm('Ver','',1);
global inclusion_radius
global pb_pointer pb_name
orig_pb_name = pb_name;

 if nargin==0, 
   conname = spm_input('W-File (rendered surface) output name:',1, 's','');
   if isempty(conname),
     conname = 'surfrend_canonical';
   end
end

% conname = 'surfrend_canonical';
IMAGEformat = 'SPM';
%load SPM.mat
%IMAGEformat = spm_input('Image Format',2,'SPM|Analyze');

switch IMAGEformat,
  case 'SPM',
   switch SPMver,
%     case 'SPM99'
%      if ~exist('xSPM','var'),    
%        [SPM,VOL,xX,xCon,xSDM] = spm_getSPM;
%        inclusion_radius = max(VOL.VOX);
%        surfrendSPM = SPM;    
%      else
%        surfrendSPM = xSPM;
%        if ~exist('xSPM.VOX','var'),
%          inclusion_radius = 3;
%        else
%          inclusion_radius = xSPM.VOX;
%        end
%      end
%     case 'SPM2'
%     case 'SPM5'
%      if ~exist('xSPM','var'),
%        [SPM,xSPM] = spm_getSPM;
%      end
%      inclusion_radius = max(xSPM.VOX);
%      surfrendSPM = xSPM;
% %      case 'SPM8'
% %      if ~exist('xSPM','var'),
% %        [SPM,xSPM] = spm_getSPM;
% %      end
% %      inclusion_radius = max(xSPM.VOX);
% %      surfrendSPM = xSPM;
% %     otherwise,
% %      error(['Unknown or unsupported version (' SPMver ') of SPM']);
   end
   
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%swd%
%swd = '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/ac1/ATLLoc/stats_outliers/swra/';
%-Load SPM.mat
load(fullfile(swd,'SPM.mat'));
SPM.swd = swd;

%-Change directory so that relative filenames are valid
%--------------------------------------------------------------------------
cd(SPM.swd);

%-Check the model has been estimated
%--------------------------------------------------------------------------
SPM.xVol.XYZ;
xX   = SPM.xX;                      %-Design definition structure
XYZ  = SPM.xVol.XYZ;                %-XYZ coordinates
S    = SPM.xVol.S;                  %-search Volume {voxels}
R    = SPM.xVol.R;                  %-search Volume {resels}
M    = SPM.xVol.M(1:3,1:3);         %-voxels to mm matrix
VOX  = sqrt(diag(M'*M))';           %-voxel dimensions

% check the data and other files have valid filenames
%--------------------------------------------------------------------------
try, SPM.xY.VY     = spm_check_filename(SPM.xY.VY);     end
try, SPM.xVol.VRpv = spm_check_filename(SPM.xVol.VRpv); end
try, SPM.Vbeta     = spm_check_filename(SPM.Vbeta);     end
try, SPM.VResMS    = spm_check_filename(SPM.VResMS);    end
try, SPM.VM        = spm_check_filename(SPM.VM);        end


%==========================================================================
% - C O N T R A S T S ,   S P M    C O M P U T A T I O N ,    M A S K I N G
%==========================================================================

%-Get contrasts
%-------------------------------------------------------------------------
%[Ic,xCon] = spm_conman(SPM,'T&F',Inf,...
%                           '    Select contrasts...',' for conjunction',1);

Ic = connum;
[SPM] = spm_contrasts(SPM,Ic);
xCon = SPM.xCon;

if isempty(xCon)
    % figure out whether new contrasts were defined, but not selected
    % do this by comparing length of SPM.xCon to xCon, remember added
    % indices to run spm_contrasts on them as well
    try
        noxCon = numel(SPM.xCon);
    catch
        noxCon = 0;
    end
    IcAdd = (noxCon+1):numel(xCon);
else
    IcAdd = [];
end
SPM.xCon = xCon;

nc        = length(Ic);

%-Allow user to extend the null hypothesis for conjunctions
%
% n: conjunction number
% u: Null hyp is k<=u effects real; Alt hyp is k>u effects real
%    (NB Here u is from Friston et al 2004 paper, not statistic thresh).
%                  u         n
% Conjunction Null nc-1      1     |    u = nc-n
% Intermediate     1..nc-2   nc-u  |    #effects under null <= u
% Global Null      0         nc    |    #effects under alt  > u,  >= u+1
%----------------------------------+---------------------------------------
if nc > 1
    try
        n = xSPM.n;
    catch
        if nc==2
            But = 'Conjunction|Global';      Val=[1 nc];
        else
            But = 'Conj''n|Intermed|Global'; Val=[1 NaN nc];
        end
        n = spm_input('Null hyp. to assess?','+1','b',But,Val,1);
        if isnan(n)
            if nc == 3,
                n = nc - 1;
            else
                n = nc - spm_input('Effects under null ','0','n1','1',nc-1);
            end
        end
    end
else
    n = 1;
end


%-Apply masking
%--------------------------------------------------------------------------
Im = [];
pm = [];
Ex = [];

%-Create/Get title string for comparison
%--------------------------------------------------------------------------
if nc == 1
    str  = xCon(Ic).name;
else
    str  = [sprintf('contrasts {%d',Ic(1)),sprintf(',%d',Ic(2:end)),'}'];
    if n == nc
        str = [str ' (global null)'];
    elseif n == 1
        str = [str ' (conj. null)'];
    else
        str = [str sprintf(' (Ha: k>=%d)',(nc-n)+1)];
    end
end
if Ex
    mstr = 'masked [excl.] by';
else
    mstr = 'masked [incl.] by';
end
if isnumeric(Im)
    if length(Im) == 1
        str = sprintf('%s (%s %s at p=%g)',str,mstr,xCon(Im).name,pm);
    elseif ~isempty(Im)
        str = [sprintf('%s (%s {%d',str,mstr,Im(1)),...
            sprintf(',%d',Im(2:end)),...
            sprintf('} at p=%g)',pm)];
    end
elseif iscellstr(Im) && numel(Im) > 0
    [pf,nf,ef] = spm_fileparts(Im{1});
    str  = sprintf('%s (%s %s',str,mstr,[nf ef]);
    for i=2:numel(Im)
        [pf,nf,ef] = spm_fileparts(Im{i});
        str =[str sprintf(', %s',[nf ef])];
    end
    str = [str ')'];
end
titlestr = str;

%-Compute & store contrast parameters, contrast/ESS images, & SPM images
%==========================================================================
SPM.xCon = xCon;
if isnumeric(Im)
    SPM  = spm_contrasts(SPM, unique([Ic, Im, IcAdd]));
else
    SPM  = spm_contrasts(SPM, unique([Ic, IcAdd]));
end
xCon     = SPM.xCon;
STAT     = xCon(Ic(1)).STAT;
VspmSv   = cat(1,xCon(Ic).Vspm);


%-Check conjunctions - Must be same STAT w/ same df
%--------------------------------------------------------------------------
if (nc > 1) && (any(diff(double(cat(1,xCon(Ic).STAT)))) || ...
                any(abs(diff(cat(1,xCon(Ic).eidf))) > 1))
    error('illegal conjunction: can only conjoin SPMs of same STAT & df');
end


%-Degrees of Freedom and STAT string describing marginal distribution
%--------------------------------------------------------------------------
df     = [xCon(Ic(1)).eidf xX.erdf];
if nc > 1
    if n > 1
        str = sprintf('^{%d \\{Ha:k\\geq%d\\}}',nc,(nc-n)+1);
    else
        str = sprintf('^{%d \\{Ha:k=%d\\}}',nc,(nc-n)+1);
    end
else
    str = '';
end

switch STAT
    case 'T'
        STATstr = sprintf('%c%s_{%.0f}','T',str,df(2));
    case 'F'
        STATstr = sprintf('%c%s_{%.0f,%.0f}','F',str,df(1),df(2));
    case 'P'
        STATstr = sprintf('%s^{%0.2f}','PPM',df(1));
end

%-Compute (unfiltered) SPM pointlist for masked conjunction requested
%==========================================================================
fprintf('\t%-32s: %30s','SPM computation','...initialising')            %-#


%-Compute conjunction as minimum of SPMs
%--------------------------------------------------------------------------
Z     = Inf;
for i = Ic
    Z = min(Z,spm_get_data(xCon(i).Vspm,XYZ));
end


%-Copy of Z and XYZ before masking, for later use with FDR
%--------------------------------------------------------------------------
XYZum = XYZ;
Zum   = Z;

%-Compute mask and eliminate masked voxels
%--------------------------------------------------------------------------
for i = 1:numel(Im)
    
    fprintf('%s%30s',repmat(sprintf('\b'),1,30),'...masking')           %-#
    if isnumeric(Im)
        Mask = spm_get_data(xCon(Im(i)).Vspm,XYZ);
        um   = spm_u(pm,[xCon(Im(i)).eidf,xX.erdf],xCon(Im(i)).STAT);
        if Ex
            Q = Mask <= um;
        else
            Q = Mask >  um;
        end
    else
        v = spm_vol(Im{i});
        Mask = spm_get_data(v,v.mat\SPM.xVol.M*[XYZ; ones(1,size(XYZ,2))]);
        Q = Mask ~= 0 & ~isnan(Mask);
        if Ex, Q = ~Q; end
    end
    XYZ   = XYZ(:,Q);
    Z     = Z(Q);
    if isempty(Q)
        fprintf('\n')                                                   %-#
        warning('SPM:NoVoxels','No voxels survive masking at p=%4.2f',pm);
        break
    end
end



%==========================================================================
% - H E I G H T   &   E X T E N T   T H R E S H O L D S
%==========================================================================

u   = -Inf;        % height threshold
k   = 0;           % extent threshold {voxels}

%-Get FDR mode
%--------------------------------------------------------------------------
topoFDR = true;

%-Height threshold - classical inference
%--------------------------------------------------------------------------
if STAT ~= 'P'
    
    %-Get height threshold
    %----------------------------------------------------------------------
%    fprintf('%s%30s',repmat(sprintf('\b'),1,30),'...height threshold')  %-#
%    try
%        thresDesc = xSPM.thresDesc;
%    catch
%        if topoFDR
%            str = 'FWE|none';
%        else
%            str = 'FWE|FDR|none';
%        end
%        thresDesc = spm_input('p value adjustment to control','+1','b',str,[],1);
%    end
    thresDesc = 'none'
    switch thresDesc
        
%         case 'FWE' % Family-wise false positive rate
%             %--------------------------------------------------------------
%             try
%                 u = xSPM.u;
%             catch
%                 u = spm_input('p value (FWE)','+0','r',0.05,1,[0,1]);
%             end
%             thresDesc = ['p<' num2str(u) ' (' thresDesc ')'];
%             u = spm_uc(u,df,STAT,R,n,S);
%             
%             
%         case 'FDR' % False discovery rate
%             %--------------------------------------------------------------
%             if topoFDR,
%                 fprintf('\n');                                          %-#
%                 error('Change defaults.stats.topoFDR to use voxel FDR');
%             end
%             try
%                 u = xSPM.u;
%             catch
%                 u = spm_input('p value (FDR)','+0','r',0.05,1,[0,1]);
%             end
%             thresDesc = ['p<' num2str(u) ' (' thresDesc ')'];
%             u = spm_uc_FDR(u,df,STAT,n,VspmSv,0);
            
        case 'none'  % No adjustment: p for conjunctions is p of the conjunction SPM
            %--------------------------------------------------------------
            try
                u = xSPM.u;
            catch
%                u = spm_input(['threshold {',STAT,' or p value}'],'+0','r',0.001,1);
                 u = thresh;
            end
            if u <= 1
                thresDesc = ['p<' num2str(u) ' (unc.)'];
                u = spm_u(u^(1/n),df,STAT);
            else
                thresDesc = [STAT '=' num2str(u) ];
            end
            
            
        otherwise
            %--------------------------------------------------------------
            fprintf('\n');                                              %-#
            error('Unknown control method "%s".',thresDesc);
            
    end % switch thresDesc
    
    %-Compute p-values for topological and voxel-wise FDR (all search voxels)
    %----------------------------------------------------------------------
    if ~topoFDR
        fprintf('%s%30s',repmat(sprintf('\b'),1,30),'...for voxelFDR')  %-#
        switch STAT
            case 'Z'
                Ps = (1-spm_Ncdf(Zum)).^n;
            case 'T'
                Ps = (1 - spm_Tcdf(Zum,df(2))).^n;
            case 'X'
                Ps = (1-spm_Xcdf(Zum,df(2))).^n;
            case 'F'
                Ps = (1 - spm_Fcdf(Zum,df)).^n;
        end
        Ps = sort(Ps);
    end
    
    %-Peak FDR
    %----------------------------------------------------------------------
    [up,Pp] = spm_uc_peakFDR(0.05,df,STAT,R,n,Zum,XYZum,u);
    
    %-Cluster FDR
    %----------------------------------------------------------------------
    if STAT == 'T' && n == 1
        V2R        = 1/prod(SPM.xVol.FWHM(SPM.xVol.DIM > 1));
        [uc,Pc,ue] = spm_uc_clusterFDR(0.05,df,STAT,R,n,Zum,XYZum,V2R,u);
    else
        uc  = NaN;
        ue  = NaN;
        Pc  = [];
    end
    
    %-Peak FWE
    %----------------------------------------------------------------------
    uu      = spm_uc(0.05,df,STAT,R,n,S);
    
    
%-Height threshold - Bayesian inference
%--------------------------------------------------------------------------
elseif STAT == 'P'
    
    u_default = 1 - 1/SPM.xVol.S;
    str       = 'Posterior probability threshold for PPM';
    u         = spm_input(str,'+0','r',u_default,1);
    thresDesc = ['P>'  num2str(u) ' (PPM)'];
    
end % (if STAT)

%-Calculate height threshold filtering
%--------------------------------------------------------------------------
Q      = find(Z > u);

%-Apply height threshold
%--------------------------------------------------------------------------
Z      = Z(:,Q);
XYZ    = XYZ(:,Q);
if isempty(Q)
    fprintf('\n');                                                      %-#
    warning('SPM:NoVoxels','No voxels survive masking at p=%4.2f',pm);
end


%-Extent threshold (disallowed for conjunctions)
%--------------------------------------------------------------------------
if ~isempty(XYZ) && nc == 1
    
    fprintf('%s%30s',repmat(sprintf('\b'),1,30),'...extent threshold')  %-#
    
    %-Get extent threshold [default = 0]
    %----------------------------------------------------------------------
    try
        k = xSPM.k;
    catch
%        k = spm_input('& extent threshold {voxels}','+1','r',0,1,[0,Inf]);
        k = exthresh;
    end
    
    %-Calculate extent threshold filtering
    %----------------------------------------------------------------------
    A     = spm_clusters(XYZ);
    Q     = [];
    for i = 1:max(A)
        j = find(A == i);
        if length(j) >= k; Q = [Q j]; end
    end
    
    % ...eliminate voxels
    %----------------------------------------------------------------------
    Z     = Z(:,Q);
    XYZ   = XYZ(:,Q);
    if isempty(Q)
        fprintf('\n');                                                  %-#
        warning('SPM:NoVoxels','No voxels survive masking at p=%4.2f',pm);
    end
    
else
    
    k = 0;
    
end % (if ~isempty(XYZ))

%-For Bayesian inference provide (default) option to display contrast values
%--------------------------------------------------------------------------
if STAT == 'P'
    if spm_input('Plot effect-size/statistic',1,'b',{'Yes','No'},[1 0])
        Z = spm_get_data(xCon(Ic).Vcon,XYZ);
    end
end


%==========================================================================
% - E N D
%==========================================================================
fprintf('%s%30s\n',repmat(sprintf('\b'),1,30),'...done')                %-#
spm('Pointer','Arrow')


xSPM   = struct( ...
            'swd',      swd,...
            'title',    titlestr,...
            'Z',        Z,...
            'n',        n,...
            'STAT',     STAT,...
            'df',       df,...
            'STATstr',  STATstr,...
            'Ic',       Ic,...
            'Im',       {Im},...
            'pm',       pm,...
            'Ex',       Ex,...
            'u',        u,...
            'k',        k,...
            'XYZ',      XYZ,...
            'XYZmm',    SPM.xVol.M(1:3,:)*[XYZ; ones(1,size(XYZ,2))],...
            'S',        SPM.xVol.S,...
            'R',        SPM.xVol.R,...
            'FWHM',     SPM.xVol.FWHM,...
            'M',        SPM.xVol.M,...
            'iM',       SPM.xVol.iM,...
            'DIM',      SPM.xVol.DIM,...
            'VOX',      VOX,...
            'Vspm',     VspmSv,...
            'thresDesc',thresDesc);


%-RESELS per voxel (density) if it exists
%--------------------------------------------------------------------------
try, xSPM.VRpv = SPM.xVol.VRpv; end
try
    xSPM.units = SPM.xVol.units;
catch
    try, xSPM.units = varargin{1}.units; end
end

%-p-values for topological and voxel-wise FDR
%--------------------------------------------------------------------------
try, xSPM.Ps    = Ps;             end  % voxel   FDR
try, xSPM.Pp    = Pp;             end  % peak    FDR
try, xSPM.Pc    = Pc;             end  % cluster FDR

%-0.05 critical thresholds for FWEp, FDRp, FWEc, FDRc
%--------------------------------------------------------------------------
try, xSPM.uc    = [uu up ue uc];  end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

surfrendSPM = xSPM;
inclusion_radius = max(xSPM.VOX);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
fprintf (1,'\n');

global compression_index

compression_index = 1;
orig_dir = pwd;

if ~exist('spm_CanonicalBrain.mat','file'),
  error(['Could not locate spm_CanonicalBrain.mat file (containing surface' ...
         ' information)']);
end

load('spm_CanonicalBrain.mat');
  

hxfm = [ xfm ; 0 0 0 1];
surfrendSPM.RAS = [surfrendSPM.XYZmm' ones(length(surfrendSPM.XYZmm),1)] * inv(hxfm');


%% Left hemisphere
fg = spm_figure('FindWin','Interactive');
if ~isempty(fg),
  if ~isempty(pb_pointer),
    set(fg,'Pointer',pb_pointer);
    set(fg,'Name',[orig_pb_name ' - left hemisphere']);
  end;
end;
fprintf(1,'\nLeft Hemisphere: ');
vertex_coords = vertex_coords_lh(1:compression_index:end,:);
coords_ras = surfrendSPM.RAS(find(surfrendSPM.RAS(:,1) < 0),:) ; % lh < 0
coords_Z = surfrendSPM.Z(find(surfrendSPM.RAS(:,1) < 0));

if length(coords_Z) > 0,
  [vertex_index, w_index] = compute_transformation(vertex_coords, coords_ras,coords_Z);
  wfile_name = [conname '-lh.w'];
  fprintf(1,'Saving rendered surface to file: %s\n', wfile_name);
  w = write_wfile(wfile_name, w_index, vertex_index);
else
  fprintf(1,'Hemisphere does not contain above threshold voxels.\n');
end

% right hemisphere
fg = spm_figure('FindWin','Interactive');
if ~isempty(fg),
  if ~isempty(pb_pointer),
    set(fg,'Pointer',pb_pointer);
    set(fg,'Name',[orig_pb_name ' - right hemisphere']);
  end;
end;
fprintf(1,'\nRight Hemisphere: ');
vertex_coords = vertex_coords_rh(1:compression_index:end,:);
coords_ras = surfrendSPM.RAS(find(surfrendSPM.RAS(:,1) > 0),:) ; % rh > 0
coords_Z = surfrendSPM.Z(find(surfrendSPM.RAS(:,1) > 0));

if length(coords_Z) > 0,
  [vertex_index, w_index] = compute_transformation(vertex_coords, coords_ras,coords_Z);
  wfile_name = [conname '-rh.w'];
  fprintf(1,'Saving rendered surface to file: %s\n', wfile_name);
  w = write_wfile(wfile_name, w_index, vertex_index);
else
  fprintf(1,'Hemisphere does not contain above threshold voxels.\n');
end

fg = spm_figure('FindWin','Interactive');
if ~isempty(fg),
  if ~isempty(pb_pointer),
    set(fg,'Pointer','Arrow');
    set(fg,'Name',[orig_pb_name ' - Done']);
  end;
end;

pb_name = orig_pb_name;

%=========================================================================
function [incremental_vertex_index, incremental_w_index] = compute_transformation(vertex_coords,coords_ras, coords_Z)

global compression_index
global inclusion_radius

fprintf(1,'Computing MNI-space -> surface trasnformation ...\n');
vertex_index = [];
w_index = [];
incremental_vertex_index = [];
incremental_w_index = [];
dist_mat_length = 500;

spm_progress_bar('Init',100);
last_val = 0;
increment_val = 100 / (1+fix(length(coords_Z) / dist_mat_length));
curr_val = 0;

for jj=1:dist_mat_length:length(coords_Z),
  curr_coords_ras = coords_ras(jj:min(jj+dist_mat_length,length(coords_ras)),:); 
  curr_coords_Z = coords_Z(jj:min(jj+dist_mat_length,length(coords_Z)));
  ones_ras = ones(1,length(curr_coords_ras(:,1)));
  ones_surf = ones_ras;
    
  for ii=1:length(curr_coords_ras(:,1)):length(vertex_coords)-length(curr_coords_ras(:,1)),
    coords_surf = vertex_coords(ii:ii+length(curr_coords_ras(:,1))-1,:);
    
    dist_mat_fast = sqrt((ones_surf' * coords_surf(:,1)'.^2)' - ... 
                         2* coords_surf(:,1) * curr_coords_ras(:,1)' + ... ...
                         (ones_ras' * curr_coords_ras(:,1)'.^2) + ...
                         (ones_surf' * coords_surf(:,2)'.^2)' - ... 
                         2* coords_surf(:,2) * curr_coords_ras(:,2)' + ...
                        (ones_ras' * curr_coords_ras(:,2)'.^2) + ...
                         (ones_ras' * coords_surf(:,3)'.^2)' - ... 
                         2* coords_surf(:,3) * curr_coords_ras(:,3)' + ...
                         (ones_ras' * curr_coords_ras(:,3)'.^2));
   
    [item_ii, item_jj, item_v] = find(dist_mat_fast < inclusion_radius);
    vertex_index = [vertex_index item_ii'+ii-1];
    w_index = [w_index curr_coords_Z(item_jj)];
  
  end
  ii = ii + length(curr_coords_ras(:,1));
  
  if (ii < size(vertex_coords,1)),
    coords_surf = [ vertex_coords(ii:end,:); ...
                    zeros(size(curr_coords_ras,1) - size(vertex_coords(ii:end,:),1),3)]; 

    dist_mat_fast = sqrt((ones_surf' * coords_surf(:,1)'.^2)' - ... 
                         2* coords_surf(:,1) * curr_coords_ras(:,1)' + ... 
                         (ones_ras' * curr_coords_ras(:,1)'.^2) + ...
                         (ones_surf' * coords_surf(:,2)'.^2)' - ... 
                         2* coords_surf(:,2) * curr_coords_ras(:,2)' + ... 
                         (ones_ras' * curr_coords_ras(:,2)'.^2) + ...
                         (ones_ras' * coords_surf(:,3)'.^2)' - ...
                         2* coords_surf(:,3) * curr_coords_ras(:,3)' + ...
                         (ones_ras' * curr_coords_ras(:,3)'.^2));
  
    dist_mat_fast = dist_mat_fast(1:length(vertex_coords(ii:end,:)),1:length(vertex_coords(ii:end,:)));  
    [item_ii, item_jj, item_v] = find(dist_mat_fast < inclusion_radius);
    vertex_index = [vertex_index item_ii'+ii-length(curr_coords_ras(:,1))-1];
    w_index = [w_index curr_coords_Z(item_jj)];
  
    [vertex_index,jj] = unique(vertex_index);
    w_index = w_index(jj);
  
  end

  if ~isempty(vertex_index),
    incremental_vertex_index = [incremental_vertex_index vertex_index];
    incremental_w_index = [incremental_w_index w_index];
  end
  
  curr_val = curr_val + increment_val;
  if last_val < floor(curr_val),
    spm_progress_bar('Set', min(fix(curr_val),100));
    last_val = curr_val;
  end
  
end

spm_progress_bar('Clear');


%=========================================================================
function w = write_wfile(fname, w, vertex_index)

%
% w = write_wfile(fname, w, vertex_index)
% writes a vector into a binary 'w' file
%		fname - name of file to write to
%		w     - vector of values to be written
%		vertex_index  - vector of index values
%

% open it as a big-endian file
fid = fopen(fname, 'wb', 'b') ;
vnum = length(w) ;

vi = vertex_index - 1;
count=fwrite(fid, 0, 'int16');
count=fwrite3(fid, vnum);

for i=1:vnum
  fwrite3(fid, vi(i)) ;
  wt = w(i) ;
  fwrite(fid, wt, 'float') ;
end

fclose(fid) ;

%=========================================================================
function count=fwrite3(fid, val)

count=0;
b1 = bitand(bitshift(val, -16), 255) ;
b2 = bitand(bitshift(val, -8), 255) ;
b3 = bitand(val, 255) ;
count=count+fwrite(fid, b1, 'uchar') ;
count=count+fwrite(fid, b2, 'uchar') ;
count=count+fwrite(fid, b3, 'uchar') ;

