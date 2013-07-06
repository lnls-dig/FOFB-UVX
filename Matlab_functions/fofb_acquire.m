function fofb_acquire(ip_address,nr_samples,bpm_selected,ps_selected,filename)
% r = fofb_acquire(ip_address,nr_samples,bpm_selected,ps_selected)

import java.net.Socket;
import java.io.*;

% default FOFB data server parameters
ip_port = '3600';

% builds acquition command string
msg = [',N_SAMPLES,', num2str(nr_samples), ...
       ',BPM_SELECTED,', bpm_selected, ...
       ',PS_SELECTED,', ps_selected, ...
       ',FILENAME,',filename,','];

% establishes socket connection with FOFB server
skt = java.net.Socket(ip_address, str2double(ip_port));
socket.connection = skt;
socket.link.in = BufferedReader(InputStreamReader(skt.getInputStream()));
socket.link.out = PrintWriter(skt.getOutputStream(), true);
    
% sends acquisition command to FOFB server
socket.msg_out = msg;
socket.link.out.println(msg);
socket.link.out.flush();

% waits for repply
socket.nr_trials = 1;
while (socket.link.in.ready() == 0) 
    socket.nr_trials = socket.nr_trials + 1;
end;
% gets message from server
socket.link.msg_in = char(socket.link.in.readLine());

% processes server response
comma_pos = strfind(socket.link.msg_in, ',');
for i=1:length(comma_pos)-1;
    fields{i} = socket.link.msg_in(comma_pos(i)+1:comma_pos(i+1)-1);
end

if strcmpi(fields{2}, 'ERROR')
    error(['FOFB acquisition error: ' fields{3}]);
elseif strcmpi(fields{2}, 'FILE_NAME')
    fprintf('Data acquisition has been started successfully.\n');
end

% closes socket connection
socket.connection.close();
end