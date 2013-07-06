function r = fofb_load_fadata(filename)
% r = fofb_load_fadata(filename)

try
    file_id = fopen(filename);
    period = fread(file_id,1,'uint32','l');
    header_bpm = strread(fgetl(file_id), '%s', 'delimiter', '\t');
    length_bpm = length(header_bpm);
    header_ps = strread(fgetl(file_id), '%s', 'delimiter', '\t');
    length_ps = length(header_ps);
    data=[];
    while true
        nrows = fread(file_id,1, 'uint32=>double', 'l');
        ncols = fread(file_id,1, 'uint32=>double', 'l');
        if isempty(ncols*nrows)
            break;
        end
        subdata = fread(file_id, ncols*nrows, 'double', 'l');
        data = [data; reshape(subdata, ncols, nrows)'];
    end
    npts = size(data,1);
    time = ((0:npts-1)*period*0.001)';
   
catch err
    fclose(file_id);
    retrhow(err);
end

fclose(file_id);

r = struct('time',time,'orb',data(:,1:length_bpm),'bpm_names',{header_bpm(1:end)},'ps',data(:,length_bpm+1:length_bpm+length_ps/2),'ps_setpoint',data(:,1+length_bpm+length_ps/2:length_bpm+length_ps),...
    'ps_names',{header_ps(1:length_ps/2)},'ps_setpoint_names',{header_ps(1+length_ps/2:length_ps)});