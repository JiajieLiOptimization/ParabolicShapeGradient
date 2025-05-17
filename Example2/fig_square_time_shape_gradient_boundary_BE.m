time_step = [1/16,1/32,1/64];
reference1 = [4,2,1];
reference2 = [16,4,1];
error_BE_gamma2 = [0.733383,0.386972,0.210206];
loglog(time_step,0.2*reference1,'--k','DisplayName','$$O(k)$$')
hold on;
loglog(time_step,error_BE_gamma2,'-k^','DisplayName','$$\gamma=2$$, Boundary')
legend('show', 'Location', 'southeast');
grid on;
xlabel('k');
ylabel('error');