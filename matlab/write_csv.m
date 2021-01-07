function write_csv(outputs, ps, opt)
    fname = sprintf('%s/%s', outputs.output_dir, outputs.outfilename);
    [t, delta, omega, Pm, Eap, Vmag, theta, E1, Efd, P3, Temperature] = read_outfile(fname, ps, opt);

    writematrix([t, delta], sprintf('%s/%s_%s', outputs.output_dir, "delta", outputs.outfilename));
    writematrix([t, omega], sprintf('%s/%s_%s', outputs.output_dir, "omega", outputs.outfilename));
    writematrix([t, Pm], sprintf('%s/%s_%s', outputs.output_dir, "Pm", outputs.outfilename));
    writematrix([t, Eap], sprintf('%s/%s_%s', outputs.output_dir, "Eap", outputs.outfilename));
    writematrix([t, Vmag], sprintf('%s/%s_%s', outputs.output_dir, "Vmag", outputs.outfilename));
    writematrix([t, theta], sprintf('%s/%s_%s', outputs.output_dir, "theta", outputs.outfilename));
    writematrix([t, E1], sprintf('%s/%s_%s', outputs.output_dir, "E1", outputs.outfilename));
    writematrix([t, Efd], sprintf('%s/%s_%s', outputs.output_dir, "Efd", outputs.outfilename));
    writematrix([t, P3], sprintf('%s/%s_%s', outputs.output_dir, "P3", outputs.outfilename));
    writematrix([t, Temperature], sprintf('%s/%s_%s', outputs.output_dir, "Temperature", outputs.outfilename));

end
