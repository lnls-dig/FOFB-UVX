function savefilters(path_filters, sysarray, mapping_fcn)

mapping = mapping_fcn();

mapnames = {mapping.name};

if length(sysarray) > 0
    for i=1:length(sysarray)
        sysnames{i} = sysarray{i}.name;
    end
else
    sysnames = {};
end

for i=1:length(mapnames)
    index = find(strcmpi(mapnames(i),sysnames));
    variable = mapping(i);
    chassis_name = variable.chassis;
    order = variable.order;
    
    if ~isempty(index)
        sys = zpk(sysarray{index});
    else
        sys = zpk([],[],1,-1,'name',variable.name);
    end
    
    dirname = fullfile(path_filters,chassis_name,[sprintf('%0.2d_',order) sys.name]);
    [s,mess,messid] = mkdir(dirname);
    if ~s
        error('');
    end
    zeros = [real(sys.z{1}) imag(sys.z{1})];
    poles = [real(sys.p{1}) imag(sys.p{1})];
    gain = sys.k;
    save(fullfile(dirname, 'zeroes.txt'), 'zeros', '-ascii','-tabs','-double');
    save(fullfile(dirname, 'poles.txt'), 'poles', '-ascii','-tabs','-double');
    save(fullfile(dirname, 'gain.txt'), 'gain', '-ascii','-tabs','-double');    
end