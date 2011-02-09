% this function converts a logfile to a MultCond_[study][run]_[subject].mat
% file with the following cell structs : names, onsets, and durations.
% It differs from v3 in that it rounds onsets to the nearest integer


function Log2MultCond_v4(logfile)

% Log2MultCond('~/Documents/MATLAB/vtsd_logs/MRI/ya1/ATLLoc_ya1_List201_Run1.vstd_log')
% Log2MultCond('~/Documents/MATLAB/vtsd_logs/MRI/ya1/MaskedMM_ya1_List101_Run1.vstd_log')
% Log2MultCond('~/Documents/MATLAB/vtsd_logs/MRI/ya1/BaleenMM_ya1_List202_Run1.vstd_log')


% get the experiment from the logfilename
A = importdata(logfile);

% Unpack A

% textdata exname,subject,scanner,list,run,timetolog,trial#,(variable # of
% stimuli)
% data is code, item#, iti,responsetime 
exname = A.textdata{1,1};

% don't need to do blink
if strcmp(exname,'Blink')
    return;
end

onsetTimes = cellfun(@str2num,A.textdata(:,6));
codes = A.data(:,1);

unCodes = unique(codes);
% Build allCodeData struct(s)
allCodeData = [];
for ii = 1:length(unCodes)
    allCodeData(ii).code = unCodes(ii);
    allCodeData(ii).onsets = onsetTimes(codes == allCodeData(ii).code);
%     fprintf('Code: %d Length: %d\n',allCodeData(ii).code,length(allCodeData(ii).onsets))
end


% Map condition to condition name
BaleenMMCondNames = {'LP:Related Target','LP:Unrelated Target','','LP:Unrelated Filler',...
    'LP:Animal Target','HP:Related Target','HP:Unrelated Target', 'HP:Related Fillter',...
    'HP:Unrelated Filler','HP:Animal Target', 'LP:Animal Prime','HP:Animal Prime'};
MaskedMMCondNames = {'Directly Related','Indirectly Related','Unrelated',...
    'Insect Prime','Insect Target'};
ATLLocCondNames = {'Sentences','Nouns','Consonant Strings'};
AXCPTCondNames = {'AY','BX','BY','AX'};

for ii = 1:length(allCodeData)
    condName = [];
    switch exname
        case 'BaleenMM'
            condName = BaleenMMCondNames{allCodeData(ii).code};
        case 'MaskedMM'
            condName = MaskedMMCondNames{allCodeData(ii).code};
        case 'ATLLoc'
            condName = ATLLocCondNames{allCodeData(ii).code};
        case {'AXCPT','AXCPT_SC'}
            condName = AXCPTCondNames{allCodeData(ii).code};
        otherwise
            error(['No condition name mapping in Log2MultCond for' exname]);
    end
    if ~isempty(condName)
        allCodeData(ii).name = condName;
    else
        error(['Empty condition for ' exname ' and code ' num2str(allCodeData(ii).code)]);
    end    
end



% Map allCodeData into SPM MultCond format
names = cell(size(allCodeData));
onsets = cell(size(allCodeData));
durations = cell(size(allCodeData));

%fill out arrays
for ii = 1:length(names)
    onset = [];
    dur = [];
    switch exname
        case 'ATLLoc'
            onset = round(allCodeData(ii).onsets' - .4);
            dur = 4 * ones(1,length(onset));
        case 'MaskedMM'
            onset = round(allCodeData(ii).onsets' - 1);
            dur = 2 * ones(1,length(onset));
        case 'BaleenMM'
            onset = round(allCodeData(ii).onsets' - 1);
            dur = 2 * ones(1,length(onset));
        case {'AXCPT','AXCPT_SC'}
            onset = round(allCodeData(ii).onsets');
            dur = 2 * ones(1,length(onset));
    end        
    names{ii} = allCodeData(ii).name;
    onsets{ii} = onset;
    durations{ii} = dur;
end



% Build file name
[pathToLogFile prefix ext ver] = fileparts(logfile);
underscores = find(prefix == '_');
study = prefix(1:underscores(1)-1);
if strcmp(study,'AXCPT')
    study = 'AXCPT';
end
subject = prefix(underscores(1)+1:underscores(2)-1);
run = prefix(underscores(3)+4:end);
matfilename = fullfile(pathToLogFile,['MultCond_' study run '_' subject '.mat']);



save(matfilename,'names','onsets','durations');