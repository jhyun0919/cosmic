function write_ps_csv(case_name_num)

    if ~(ismcc || isdeployed)
        addpath('../data');
    end

    if case_name_num == 9
        ps = updateps(case9_ps);
        dir = "../../datasets/ps/case9";
    elseif case_name_num == 39
        ps = updateps(case39_ps);
        dir = "../../datasets/ps/case39";
    elseif case_name_num == 2383
        load case2383_mod_ps_dyn;
        dir = "../../datasets/ps/case2383";
    else
        fprintf('wrong case name as an input arg');
    end

    bus = ps.bus;
    branch = ps.branch;
    gen = ps.gen;
    mac = ps.mac;
    shunt = ps.shunt;
    exc = ps.exc;
    gov = ps.gov;
    areas = ps.areas;
    gencost = ps.gencost;

    writematrix(bus, sprintf('%s/%s', dir, "bus.csv"));
    writematrix(branch, sprintf('%s/%s', dir, "branch.csv"));
    writematrix(gen, sprintf('%s/%s', dir, "gen.csv"));
    writematrix(mac, sprintf('%s/%s', dir, "mac.csv"));
    writematrix(shunt, sprintf('%s/%s', dir, "shunt.csv"));
    writematrix(exc, sprintf('%s/%s', dir, "exc.csv"));
    writematrix(gov, sprintf('%s/%s', dir, "gov.csv"));
    writematrix(areas, sprintf('%s/%s', dir, "areas.csv"));
    writematrix(gencost, sprintf('%s/%s', dir, "gencost.csv"));
end
