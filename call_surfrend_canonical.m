function call_surfrend_canonical(swd, thresh, exthresh)

%%
%% Candida Ustine
%% Usage: call_surfrend_canonical ('Path_to_SPM.mat_Model_folder', 0.01, 0) 
%_______________________________________________________________________
% @(#)surfrend_canonical.m	V1.0 CVS $Author: itamarkahn $ $Date: 2008/04/03 13:10:38 $ $Name:  $ $RCSfile: surfrend_canonical.m,v $ $Revision: 1.14 $

[SPMver, SPMc] = spm('Ver','',1);
global inclusion_radius
global pb_pointer pb_name
orig_pb_name = pb_name;

IMAGEformat = 'SPM';
%load SPM.mat
%IMAGEformat = spm_input('Image Format',2,'SPM|Analyze');

switch IMAGEformat,
  case 'SPM',
   switch SPMver,
   end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


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
connum = numel(SPM.xCon);           %total number of contrats
fprintf('Total contrasts in this model: %d\n', connum)

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

for Ic = 1:connum
			%Ic = connum;
			[SPM] = spm_contrasts(SPM,Ic);
			xCon = SPM.xCon;
            conname  = xCon(Ic).name;
            fprintf('Contrast Number: %d\n', Ic)
            fprintf('Contrast Name: %s\n', conname)
            %surfrend_canonical(conname, Ic, swd, thresh, exthresh)
            
            %%Writing ticcle scripts for lh for Contrast Ic
            command = ['python /cluster/kuperberg/SemPrMM/MRI/scripts/write_tickle_script.py ', conname,' ', swd, ' lh ', num2str(thresh), ' ', num2str(exthresh)];
            system(command)
            
            %%Writing ticcle scripts for rh for Contrast Ic
            command = ['python /cluster/kuperberg/SemPrMM/MRI/scripts/write_tickle_script.py ', conname,' ', swd, ' rh ', num2str(thresh), ' ', num2str(exthresh)];
            system(command)
            fprintf('Tickle scripts written...\n\n')
            
            %List of Contrast names that will have to be labeled in Blue to
            %signify deactivation 
            DeactCons = {'BaselineVsExp', 'DirectVsUnrel', 'IndirectVsUnrel', 'FixationVsAll', 'HPRE', 'LPRE', 'RelatedVsUnrelated', 'RelatedVSUnrelated', 'RelatedUnrelated'};
%             
%             %Tksurfer
%              '-fthresh ',num2str(thresh),
            if ismember(conname, DeactCons)
                            command = ['tksurfer spm_canonical lh inflated -invphaseflag 1 -fthresh ', num2str(thresh), ' -overlay ', conname, '-lh.w ', '-tcl ', conname, '-lh.tcl'];
                            system(command)
                            fprintf(command)
                            command = ['tksurfer spm_canonical rh inflated -invphaseflag 1 -fthresh ', num2str(thresh), ' -overlay ', conname, '-rh.w ', '-tcl ', conname, '-rh.tcl'];
                            system(command)
                            fprintf(command)
            else
                            command = ['tksurfer spm_canonical lh inflated -fthresh ', num2str(thresh), ' -overlay ', conname, '-lh.w ', '-tcl ', conname, '-lh.tcl']
                            system(command)
                            fprintf(command)
                            command = ['tksurfer spm_canonical rh inflated -fthresh ', num2str(thresh), ' -overlay ', conname, '-rh.w ', '-tcl ', conname, '-rh.tcl']
                            system(command)
                            fprintf(command)
            end
            
            command = ['convert ', conname, '-lh-', num2str(thresh), '-', num2str(exthresh), '-Lat.rgb -colorspace RGB ', conname, '-lh-', num2str(thresh), '-', num2str(exthresh), '-Lat.png'];
            system(command)
            command = ['convert ', conname, '-lh-', num2str(thresh), '-', num2str(exthresh), '-Ven.rgb -colorspace RGB ', conname, '-lh-', num2str(thresh), '-', num2str(exthresh), '-Ven.png'];
            system(command)
            command = ['convert ', conname, '-lh-', num2str(thresh), '-', num2str(exthresh), '-Med.rgb -colorspace RGB ', conname, '-lh-', num2str(thresh), '-', num2str(exthresh), '-Med.png'];
            system(command)

            command = ['convert ', conname, '-rh-', num2str(thresh), '-', num2str(exthresh), '-Lat.rgb -colorspace RGB ', conname, '-rh-', num2str(thresh), '-', num2str(exthresh), '-Lat.png'];
            system(command)
            command = ['convert ', conname, '-rh-', num2str(thresh), '-', num2str(exthresh), '-Ven.rgb -colorspace RGB ', conname, '-rh-', num2str(thresh), '-', num2str(exthresh), '-Ven.png'];
            system(command)
            command = ['convert ', conname, '-rh-', num2str(thresh), '-', num2str(exthresh), '-Med.rgb -colorspace RGB ', conname, '-rh-', num2str(thresh), '-', num2str(exthresh), '-Med.png'];
            system(command)
            
            
            
end
