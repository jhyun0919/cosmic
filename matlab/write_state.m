function write_state(output_dir, outfilename, t_vector, X, Y)
    % usage: write_state(outfilename,t_vector,X,Y)
    % writes the state variables (t,x,y) to the output file

    outfilename = sprintf('%s/%s', output_dir, outfilename);

    fid = fopen(outfilename, 'a+');
    if isempty(fid), error('write_state:err', 'could not open %s .', outfilename); end

    for k = 1:length(t_vector)
        fprintf(fid, '%.8f,', t_vector(k));
        fprintf(fid, '%g,', X(:, k));
        fprintf(fid, '%g,', Y(:, k));
        fprintf(fid, '\n');
    end

    fclose(fid);
