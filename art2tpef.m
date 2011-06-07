function art2tpef(study,direc)
cd(direc)
art_file = dir('art_regression_outliers_and_movement_*.mat');
art_file = art_file.name;
load(art_file)
sizee = size(R);
if sizee(2) > 6
    [row,col] = find(R(:,1:6) == 1);
    stu = lower(study);
    %write out rows * 2 because tpef should be in seconds, not time points 
    dlmwrite([stu '.tpef'], row*2,'delimiter','\n')
    disp(['art2tpef:' num2str(length(row)) ' time points excluded'])
else
    disp(['art2tpef: 0 time points excluded'])
end