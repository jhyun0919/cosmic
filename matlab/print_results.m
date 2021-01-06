function print_results(outputs, ps, opt)

    if opt.sim.writelog
        fname = outputs.outfilename;
        [t, delta, omega, Pm, Eap, Vmag, theta, E1, Efd, P3, Temperature] = read_outfile(fname, ps, opt);
        omega_0 = 2 * pi * ps.frequency;
        omega_pu = omega / omega_0;

        if opt.sim.show_graphs

            figure(1); clf; hold on;
            nl = size(omega_pu, 2); colorset = varycolor(nl);
            % set(gca,'ColorOrder',colorset,'FontSize',18,'Xtick',[0 600 1200 1800],...
            %     'Xlim',[0 50],'Ylim',[0.995 1.008]);
            plot(t, omega_pu);
            ylabel('\omega (pu)', 'FontSize', 18);
            xlabel('time (sec.)', 'FontSize', 18);
            % PrintStr = sprintf('OmegaPu_P_%s_%s_%s',CaseName, Contingency, Control);
            % print('-dpng','-r600',PrintStr)

            figure(2); clf; hold on;
            nl = size(theta, 2); colorset = varycolor(nl);
            % set(gca,'ColorOrder',colorset,'FontSize',18,'Xlim',[0 50],'Ylim',[-0.2 0.5]);
            plot(t, theta);
            ylabel('\theta', 'FontSize', 18);
            xlabel('time (sec.)', 'FontSize', 18);

            figure(3); clf; hold on;
            nl = size(Vmag, 2); colorset = varycolor(nl);
            % set(gca,'ColorOrder',colorset,'FontSize',18,'Xlim',[0 50],'Ylim',[0.88 1.08]);
            plot(t, Vmag);
            ylabel('|V|', 'FontSize', 18);
            xlabel('time (sec.)', 'FontSize', 18);

            figure(5); clf; hold on;
            nl = size(Pm, 2); colorset = varycolor(nl);
            % set(gca,'ColorOrder',colorset,'FontSize',18,'Xlim',[0 50],'Ylim',[0.88 1.08]);
            plot(t, Pm);
            ylabel('Pm', 'FontSize', 18);
            xlabel('time (sec.)', 'FontSize', 18);

            figure(6); clf; hold on;
            nl = size(delta, 2); colorset = varycolor(nl);
            % set(gca,'ColorOrder',colorset,'FontSize',18,'Xlim',[0 50],'Ylim',[0.88 1.08]);
            % plot(t',delta'.*180./pi);
            plot(t, delta);
            ylabel('Delta', 'FontSize', 18);
            xlabel('time (sec.)', 'FontSize', 18);

            figure(7); clf; hold on;
            nl = size(Eap, 2); colorset = varycolor(nl);
            % set(gca,'ColorOrder',colorset,'FontSize',18,'Xlim',[0 50],'Ylim',[0.88 1.08]);
            plot(t, Eap);
            ylabel('Eap', 'FontSize', 18);
            xlabel('time (sec.)', 'FontSize', 18);

            figure(8); clf; hold on;
            nl = size(E1, 2); colorset = varycolor(nl);
            % set(gca,'ColorOrder',colorset,'FontSize',18,'Xlim',[0 50],'Ylim',[0.88 1.08]);
            plot(t, E1);
            ylabel('E1', 'FontSize', 18);
            xlabel('time (sec.)', 'FontSize', 18);

            figure(9); clf; hold on;
            nl = size(Efd, 2); colorset = varycolor(nl);
            % set(gca,'ColorOrder',colorset,'FontSize',18,'Xlim',[0 50],'Ylim',[0.88 1.08]);
            plot(t, Efd);
            ylabel('Efd', 'FontSize', 18);
            xlabel('time (sec.)', 'FontSize', 18);

            figure(10); clf; hold on;
            nl = size(Temperature, 2); colorset = varycolor(nl);
            % set(gca,'ColorOrder',colorset,'FontSize',18,'Xlim',[0 50],'Ylim',[0.88 1.08]);
            plot(t, Temperature);
            ylabel('Temperature ( ^{\circ}C)', 'Interpreter', 'tex', 'FontSize', 18);
            xlabel('time (sec.)', 'FontSize', 18);
        end

    end

end
