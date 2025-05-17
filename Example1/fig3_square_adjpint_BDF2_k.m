% adjoint BDF2
time_step = [1.5,0.75,0.375,0.1875];
reference1 = [8,4,2,1];
reference2 = [64,16,4,1];
error_v_ell2 = [0.943661,0.176651,0.0298593,0.00766852];
error_v_infty = [0.169091,0.044246,0.0100248,0.00200022];

loglog(time_step,0.004*reference2,'--k','DisplayName','$$O(k^2)$$');
hold on;
loglog(time_step,error_v_ell2,'-k^','DisplayName','$$\left\|v-v_h \right\|_{\ell^2 ([0,T];H^1(\Omega))}$$');
loglog(time_step,error_v_infty,'-ks','DisplayName','$$\left\|v-v_h\right\|_{\ell^{\infty} ([0,T];L^2(\Omega))}$$');

legend('show', 'Location', 'southeast');
grid on;
xlabel('k');
ylabel('error');