% CreateParallel Bash scripts for pRF fitting on LISA
%%
% joblist.monkey = 'danny';
% joblist.sessions = {...
%     '20171116',     [];... 
%     '20171129',     [6];... 
%     '20171129_1',   [];... 
%     '20171129_2',   [];... 
%     '20171207',     [];... 
%     '20171214',     [8];...
%     '20171214_1',   [];...
%     '20171214_2',   [];...
%     '20171220',     [];... 
%     '20180117',     [8];... 
%     '20180117_1',   [];... 
%     '20180117_2',   [];... 
%     '20180124',     [];... 
%     '20180125',     [8];...
%     '20180125_1',   [];...
%     '20180125_2',   [];... 
%     '20180131',     [];...
%     '20180201',     []...  
%     };%[1:10]; % SESSION nWorkers
%%
joblist.monkey = 'eddy';
joblist.sessions = {...
    '20160721',     [];... 
    '20160728',     [];... 
    '20160729',     [];... 
    '20160803',     [];... 
    '20160804',     [];... 
    '20170411',     [];...
    '20170512',     [];...
    '20170518',     [];...
    '20171129',     [];... 
    };%[1:10]; % SESSION nWorkers
 
%%
joblist.sessinc = 1:size(joblist.sessions,1); 
%joblist.slicechunks = {'01:14','15:28','29:42','43:56'}; % 2 digits, leading zero!
joblist.slicechunks = {'01:15','16:30','31:45','46:60'}; % 2 digits, leading zero!
joblist.type = 'us_reg';
 
parallel_fun_dir    = '$TMPDIR/PRF/'; %$TMPDIR is fast 'scratch' space
parallel_fun        = 'pRF_FitModel_LISA';
job_name            = 'FitPRF_PerSession';
 
disp('== Running create_parallel_LISA ==')
 
pRF_CreateParallel4LISA_worker(parallel_fun, joblist, parallel_fun_dir, job_name)
 