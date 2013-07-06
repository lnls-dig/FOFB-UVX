function plot_fft_all_BPMs(data, default_color, log, disturbance_threshold)

if nargin < 2
    default_color = 'b';
end

if nargin < 3
    log = 1;
end

% Threshold of relevant position disturbance (um)
if nargin < 4
    disturbance_threshold = 0;
end

npts_total = length(data.time);

spectogram = 0;
% npts_fraction = 1/100;
% dt = 0.33;
% npts_interval = npts_total*npts_fraction;
% time_intervals_start = ((1:(npts_total/200):npts_total*(1/npts_fraction-1)*npts_fraction)-1)*dt;

% npts_total = 100000;
% npts_interval = 1000;
% dt = 0.33;
% t = (0:npts_interval:((npts_total-1) - npts_interval))*dt;
% npts_t = length(t);
% time_intervals = repmat([0 npts_interval-1], npts_t, 1)*dt + repmat(t', 1, 2);

if ~exist('time_intervals_start','var') || isempty(time_intervals_start) || all(all(time_intervals_start == 0))
    time_intervals_start = data.time(1);
    npts_interval = length(data.time);
end

time_intervals_start_indexes = zeros(size(time_intervals_start));
for i=1:length(time_intervals_start)
   aux = find(data.time >= time_intervals_start(i));
   time_intervals_start_indexes(i) = aux(1);
end

n_intervals = length(time_intervals_start_indexes);

window = 1;

% Number of BPMs in the dataset (consider dataset has concatenated
% horizontal and vertical BPM readings)
n_bpms = size(data.orb,2)/2;

% Selected BPM indexes
selected_bpms = 1:n_bpms;

%selected_bpms = 25;

% Frequency range (Hz) (for visualization)
freq_range = [0 500];

% Amplitude range (um) (for visualization)
amplitude_range_horizontal = [1e-4 4e0];
amplitude_range_vertical = [1e-4 3e0];

% ===================
% Preparation of data
% ===================

selected_bpms = [selected_bpms selected_bpms+length(selected_bpms)];

n_selected_bpms = length(selected_bpms);

% Sample time
Ts = data.time(2)-data.time(1);

% Sampling frequency (Hz)
Fs = 1000/Ts;

% Convert BPM data from mm to um
bpm_position = 1e3*data.orb;

bpm_position_fseries = zeros(npts_interval, n_intervals, n_selected_bpms);
time_intervals_labels = cell(n_intervals, 1);
for i=1:length(time_intervals_start_indexes)
    time_interval_index = time_intervals_start_indexes(i)+(0:npts_interval-1);
    npts = time_interval_index(end)-time_interval_index(1)+1;

    % Remove DC component
    bpm_position_dc = mean(bpm_position(time_interval_index, selected_bpms));
    bpm_position_ac = bpm_position(time_interval_index, selected_bpms) - repmat(bpm_position_dc, length(time_interval_index), 1);    
    
    % Apply windowing on data for FFT
    if window
        bpm_position_ac_windowed = bpm_position_ac.*repmat(hann(size(bpm_position_ac,1)), 1,  size(bpm_position_ac,2));
    else
        bpm_position_ac_windowed = bpm_position_ac;
    end
    
    % Compute FFT and convert 
    fft_result = abs(fft(bpm_position_ac_windowed));
    bpm_position_fseries(:,i,:) = 1/npts*[fft_result(1,:); 2*fft_result(2:end,:)];
     
    time_intervals_labels{i} = [num2str(round(data.time(time_interval_index(1)))) ' \leq t \leq ' num2str(round(data.time(time_interval_index(end))))];
end


% ===========
% Plot graphs
% ===========

if length(time_intervals_start_indexes) == 1
    colors = default_color;
else
    colors = copper(length(time_intervals_start_indexes));
end

f = linspace(0, Fs, npts_interval+1);
f = f(1:end-1);

for i = 1:n_selected_bpms/2
    if ~spectogram
        fig = figure(i);
        if ~disturbance_threshold
            subplot(211)
            for j=1:length(time_intervals_start_indexes)
                if log
                    semilogy(f, bpm_position_fseries(:,j,i), 'Color', colors(j,:));
                else
                    plot(f, bpm_position_fseries(:,j,i), 'Color', colors(j,:));
                end
                hold on;
            end
            axis([freq_range amplitude_range_horizontal])
            grid on;
            ylabel('Position (um)','FontSize',12,'FontWeight','bold');
            title(data.bpm_names{selected_bpms(i)},'FontSize',12,'FontWeight','bold');

            subplot(212)
            for j=1:length(time_intervals_start_indexes)
                if log
                    semilogy(f, bpm_position_fseries(:,j,i+n_selected_bpms/2), 'Color', colors(j,:));
                else
                    plot(f, bpm_position_fseries(:,j,i+n_selected_bpms/2), 'Color', colors(j,:));
                end
                hold on;
            end
            axis([freq_range amplitude_range_vertical])
            grid on;
            ylabel('Position (um)','FontSize',12,'FontWeight','bold');
            title(data.bpm_names{selected_bpms(i)+n_bpms},'FontSize',12,'FontWeight','bold');
        else
            hold on;
            if log
                subplot(211)
                semilogy([0 Fs], disturbance_threshold*[1 1], 'r--');
                subplot(212)
                semilogy([0 Fs], disturbance_threshold*[1 1], 'r--');
                axis([freq_range amplitude_range_horizontal])
            else
                subplot(211)
                plot([0 Fs], disturbance_threshold*[1 1], 'r--');
                subplot(212)
                plot([0 Fs], disturbance_threshold*[1 1], 'r--');
                axis([freq_range amplitude_range_vertical])
            end
        end
    else
        fig = figure;
        subplot(211)
        surf(f, time_intervals_start_indexes/1e3, bpm_position_fseries(:,:,i)','EdgeColor','none','LineStyle','none','FaceLighting','phong');
        view(0,90);
        axis([freq_range time_intervals_start([1 end])/1e3])
        title(data.bpm_names{selected_bpms(i)},'FontSize',12,'FontWeight','bold');
        ylabel('Time (s)','FontSize',12,'FontWeight','bold');  
        zlabel('Position (um)','FontSize',12,'FontWeight','bold');
        
        subplot(212)
        surf(f, time_intervals_start_indexes/1e3, bpm_position_fseries(:,:,i+n_selected_bpms/2)','EdgeColor','none','LineStyle','none','FaceLighting','phong');
        view(0,90);
        axis([freq_range time_intervals_start([1 end])/1e3])
        title(data.bpm_names{selected_bpms(i)+n_bpms},'FontSize',12,'FontWeight','bold');
        ylabel('Time (s)','FontSize',12,'FontWeight','bold');  
        zlabel('Position (um)','FontSize',12,'FontWeight','bold');
    end
    
    xlabel('Frequency (Hz)','FontSize',12,'FontWeight','bold');    

    set(fig,'WindowStyle','docked');
    set(fig, 'Name', [data.bpm_names{selected_bpms(i)} ' - ' data.bpm_names{selected_bpms(i)+n_bpms}], 'NumberTitle', 'off');
end