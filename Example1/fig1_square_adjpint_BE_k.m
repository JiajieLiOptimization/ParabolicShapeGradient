% adjoint BE
time_step = [0.75,0.375,0.1875,0.09375];
reference = [8,4,2,1];
error_v_ell2 = [0.0692109,0.0367221,0.0190557,0.0100172];
error_v_infty = [0.0122538,0.00698932,0.00365394,0.00189943];

loglog(time_step,0.004*reference,'--k','DisplayName','$$O(k)$$');
hold on;
loglog(time_step,error_v_ell2,'-k^','DisplayName','$$\left\|v-v_h \right\|_{\ell^2 ([0,T];H^1(\Omega))}$$');
loglog(time_step,error_v_infty,'-ks','DisplayName','$$\left\|v-v_h\right\|_{\ell^{\infty} ([0,T];L^2(\Omega))}$$');

legend('show', 'Location', 'southeast');
grid on;
xlabel('k');
ylabel('error');