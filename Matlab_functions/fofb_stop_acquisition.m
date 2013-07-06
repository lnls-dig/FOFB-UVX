function [data, r] = fofb_stop_acquisition(ip_address)
%
import java.net.Socket;
import java.io.*;

% default FOFB server parameters
r.fofb_server.ip_address   = ip_address;
r.fofb_server.ip_port      = '3600';
r.fofb_server.ftp.username = 'admin';
r.fofb_server.ftp.password = 'boo500mev';
r.fofb_server.ftp.data_dir = {'fofb'};

% builds stop command string
msg = ',STOP,';

% establishes socket connection with FOFB server
skt = java.net.Socket(r.fofb_server.ip_address, str2double(r.fofb_server.ip_port));
r.fofb_server.socket.connection = skt;
r.fofb_server.socket.link.in = BufferedReader(InputStreamReader(skt.getInputStream()));
r.fofb_server.socket.link.out = PrintWriter(skt.getOutputStream(), true);
    
% sends command to FOFB server
r.fofb_server.socket.msg_out = msg;
r.fofb_server.socket.link.out.println(msg);
r.fofb_server.socket.link.out.flush();

% waits for repply
r.fofb_server.socket.nr_trials = 1;
while (r.fofb_server.socket.link.in.ready() == 0) 
    r.fofb_server.socket.nr_trials = r.fofb_server.socket.nr_trials + 1;
end;
% gets message from server
r.fofb_server.socket.link.msg_in = char(r.fofb_server.socket.link.in.readLine());

% processes server response
comma_pos = strfind(r.fofb_server.socket.link.msg_in, ',');
for i=1:length(comma_pos)-1;
    fields{i} = r.fofb_server.socket.link.msg_in(comma_pos(i)+1:comma_pos(i+1)-1);
end

% takes action accordingly
if strcmpi(fields{2}, 'ERROR')
    error(['FOFB acquisition error: ' fields{3}]);

elseif strcmpi(fields{2}, 'STOPPED')
    disp('The acquisition has been stopped successfully');
end

% closes socket connection
 r.fofb_server.socket.connection.close();
end