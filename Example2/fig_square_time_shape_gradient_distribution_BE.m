time_step = [1/16,1/32,1/64,1/128,1/256];
reference1 = [16,8,4,2,1];
reference2 = [256,64,16,4,1];
error_BE_gamma2 = [1.74199,0.932534,0.481825,0.244213,0.122259];
loglog(time_step,0.10625*reference1,'--k','DisplayName','$$O(k)$$')
hold on;
loglog(time_step,error_BE_gamma2,'-k^','DisplayName','$$\gamma=2$$, Distributed')
legend('show', 'Location', 'southeast');
grid on;
xlabel('k');
ylabel('error');