function MakeMultConds(subj_cell)
warning off MATLAB:fileparts:VersionToBeRemoved

for ii = 1:length(subj_cell)
    
    subject = subj_cell{ii};
    
    pathh = fullfile('/cluster/kuperberg/SemPrMM/MRI/vtsd_logs/',subject);
    loglisting = dir([pathh '/*.v*']);
    logs = cell(1,length(loglisting));
    for jj = 1:length(loglisting)
        logs{jj} = loglisting(jj).name;
    end
    
    for kk = 1:length(logs)
%         fprintf('Parsing: %s\n',logs{kk});
        Log2MultCond_v4(fullfile(pathh,logs{kk}));
        fprintf('Finished %s\n',logs{kk});
    end
end