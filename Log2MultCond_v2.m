% this function converts a logfile to a MultCond_[study][run]_[subject].mat
% file with the following cell structs : names, onsets, and durations. This
% version differs from v1 in that a Baleen log file is converted to 11
% conditions, but this seems to not work with SPM.  Use v1 for the time
% being until this is worked out.

function Log2MultCond_v2(logfile)

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


onsetTimes = cellfun(@str2num,A.textdata(:,6));
codes = A.data(:,1);

BaleenMMCondNames = {'LP:Related Target','LP:Unrelated Target','','LP:Unrelated Filler',...
    'LP:Animal Target','HP:Related Target','HP:Unrelated Target', 'HP:Related Filler',...
    'HP:Unrelated Filler','HP:Animal Target', 'LP:Animal Prime','HP:Animal Prime'};
MaskedMMCondNames = {'Directly Related','Indirectly Related','Unrelated',...
    'Insect Prime','Insect Target'};
ATLLocCondNames = {'Sentences','Nouns','Consonant Strings'};
AXCPTCondNames = {'AY','BY','BX','AX'};

unCodes = unique(codes);
switch exname
    case 'BaleenMM'
        unCodes = 1:length(BaleenMMCondNames);
    case 'MaskedMM'
        unCodes = 1:length(MaskedMMCondNames);
    case 'ATLLoc'
        unCodes = 1:length(ATLLocCondNames);
    case 'AX-CPT'
        unCodes = 1:length(AXCPTCondNames);
end
% Build allCodeData struct(s)
allCodeData = [];
for ii = 1:length(unCodes)
    allCodeData(ii).code = unCodes(ii);
    allCodeData(ii).onsets = onsetTimes(codes == allCodeData(ii).code);
%     fprintf('Code: %d Length: %d\n',allCodeData(ii).code,length(allCodeData(ii).onsets))
end


% Map condition to condition name


for ii = 1:length(allCodeData)
    condName = [];
    switch exname
        case 'BaleenMM'
            condName = BaleenMMCondNames{allCodeData(ii).code};
        case 'MaskedMM'
            condName = MaskedMMCondNames{allCodeData(ii).code};
        case 'ATLLoc'
            condName = ATLLocCondNames{allCodeData(ii).code};
        case 'AX-CPT'
            condName = AXCPTCondNames{allCodeData(ii).code};
        otherwise
            error(['No condition name mapping in Log2MultCond for' exname]);
    end
    allCodeData(ii).name = condName;
%     if ~isempty(condName)
%         
%     else
%         error(['Empty condition for ' exname ' and code ' num2str(allCodeData(ii).code)]);
%     end    
end



% Map allCodeData into SPM MultCond format
names = cell(size(allCodeData));
onsets = cell(size(allCodeData));
durations = cell(size(allCodeData));

%fill out arrays
for ii = 1:length(names)
    onset = [];
    dur = [];
    if ~isempty(allCodeData(ii).name)
        switch exname
            case 'ATLLoc'
                onset = allCodeData(ii).onsets';
                dur = 3.6 * ones(1,length(onset));
            case 'MaskedMM'
                onset = allCodeData(ii).onsets' - .4;
                dur = 1.4 * ones(1,length(onset));
            case 'BaleenMM'
                onset = allCodeData(ii).onsets' - .6;
                dur = 1.6 * ones(1,length(onset));
            case 'AX-CPT'
                onset = allCodeData(ii).onsets';
                dur = 1.75 * ones(1,length(onset));
        end        
        names{ii} = allCodeData(ii).name;
        onsets{ii} = onset;
        durations{ii} = dur;
    end
end
if strcmp(exname, 'BaleenMM')
    goodCodes = [ 1 2 4 5 6 7 8 9 10 11 12];
    names = names(goodCodes);
    onsets = onsets(goodCodes);
    durations = durations(goodCodes);
end

% Build file name
[pathToLogFile prefix ext ver] = fileparts(logfile);
underscores = find(prefix == '_');
study = prefix(1:underscores(1)-1);
if strcmp(study,'AX-CPT')
    study = 'AXCPT';
end
subject = prefix(underscores(1)+1:underscores(2)-1);
run = prefix(underscores(3)+4:end);
matfilename = fullfile(pathToLogFile,['MultCond_' study run '_' subject '.mat']);



save(matfilename,'names','onsets','durations');