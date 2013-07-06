function plot_rmm_psrespone_experiment(path)

filenames = dir(path);
filenames = filenames(3:end);

readings = [];
setpoints = [];

nps = length(filenames);
psnames = cell(nps,1);

% Load FA files
for i=1:nps
    r = fofb_load_fadata([path '\' filenames(i).name]);
    psnames(i) = r.ps_names(1);
    readings = [readings r.ps];
    setpoints = [setpoints r.ps_setpoint];
end
Ts = r.time(2)-r.time(1);

amplitude_before = setpoints(1,:);
amplitude_after = setpoints(end,:);
delta_amplitude = amplitude_after - amplitude_before;

setpoints_derivative = setpoints(2:end, :) - setpoints(1:end-1, :);

indexes = zeros(1,nps);
for i=1:nps
    indexes(i) = find(setpoints_derivative(:,i) ~= 0);
end

npts = 70;

start_index = 1;
readings2 = [];
for i=1:nps
    readings2 = [readings2 readings((1:npts)+indexes(i)-start_index,i)];
end
readings2 = readings2(1:npts,:);
readings2 = readings2 - repmat(amplitude_before, npts, 1);
readings2 = readings2./repmat(delta_amplitude, npts, 1);

sepoint = (setpoints((1:npts)+indexes(1)-start_index,1) - amplitude_before(1))/delta_amplitude(1);

legend_labels = cell(nps,1);
for i=1:nps
    legend_labels{i} = [psnames{i} '   \Delta = ' sprintf('%0.2f', delta_amplitude(i)) ' A'];
end
t = (0:npts-1)*Ts;

% colors_layer1 = lines(nps);
% colors_hsv = hot(ceil(nps/7));
% colors_layer2 = zeros(7*ceil(nps/7), 3);
% for i=2:ceil(nps/7)
%     colors_layer2((1:7)+(i-1)*7,1:3) = repmat(colors_hsv(i,:),7,1);
% end
% colors_layer2 = colors_layer2(1:nps,:);
% colors =  colors_layer1 + 0.3*colors_layer2;
% colors(colors > 1) = 1;

% Plot results
ACH_indexes = 1:18;
figure
hold on
plot(t, readings2(:,ACH_indexes))
plot(t, sepoint, 'k', 'LineWidth', 3)
title('Grupo ACH', 'FontSize', 14)
xlabel('Tempo [ms]', 'FontSize', 14)
ylabel('Corrente [amplitude degrau]', 'FontSize', 14)
legend(legend_labels(ACH_indexes),'FontSize',10)
grid on

ACV_indexes = 19:30;
figure
hold on
plot(t, readings2(:,ACV_indexes))
plot(t, sepoint, 'k', 'LineWidth', 3)
title('Grupo ACV', 'FontSize', 14)
xlabel('Tempo [ms]', 'FontSize', 14)
ylabel('Corrente [amplitude degrau]', 'FontSize', 14)
legend(legend_labels(ACV_indexes),'FontSize',10)
grid on

ALV_indexes = 31:42;
figure
hold on
plot(t, readings2(:,ALV_indexes))
plot(t, sepoint, 'k', 'LineWidth', 3)
title('Grupo ALV', 'FontSize', 14)
xlabel('Tempo [ms]', 'FontSize', 14)
ylabel('Corrente [amplitude degrau]', 'FontSize', 14)
legend(legend_labels(ALV_indexes),'FontSize',10)
grid on

figure
hold on
plot(t, readings2(:,i))
plot(t, readings2)
plot(t, sepoint, 'k', 'LineWidth', 3)
title('Todas as corretoras do anel', 'FontSize', 14)
xlabel('Tempo [ms]', 'FontSize', 14)
ylabel('Corrente [amplitude degrau]', 'FontSize', 14)
legend(legend_labels,'FontSize',10)
grid on