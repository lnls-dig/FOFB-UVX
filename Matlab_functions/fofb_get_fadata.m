function data = fofb_get_fadata(ip_address,filename)

username = 'admin';
password = 'boo500mev';

try
    % establishes FTP connection with FOFB server
    r.fofb_server.ftp.connection = ftp(ip_address, username, password);
    cd(r.fofb_server.ftp.connection, 'fofb');
    cd(r.fofb_server.ftp.connection, 'FA Data');
    
    % retrieves file from FOFB server
    r.fofb_server.ftp.local_data_dir = fileparts(mfilename('fullpath'));
    mget(r.fofb_server.ftp.connection, filename, r.fofb_server.ftp.local_data_dir);
end

% closes ftp connection
close(r.fofb_server.ftp.connection);
    
% loads data from file
fname = fullfile(r.fofb_server.ftp.local_data_dir, filename);
data = fofb_load_fadata(fname);

% deletes local copy of data file
delete(fname);