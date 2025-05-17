% adjoint BDF2
mesh_size = [0.0625,0.03125,0.015625,0.0078125];
reference1 = [8,4,2,1];
reference2 = [64,16,4,1];
error_v_ell2 = [0.185467,0.0925247,0.0462354,0.0231143];
error_v_infty = [0.0110689,0.00279672,0.000711812,0.000189558];

loglog(mesh_size,0.02*reference1,'--k','DisplayName','$$O(h)$$');
hold on;
loglog(mesh_size,0.0002*reference2,':k','DisplayName','$$O(h^2)$$');
loglog(mesh_size,error_v_ell2,'-k^','DisplayName','$$\left\|v-v_h \right\|_{\ell^2 ([0,T];H^1(\Omega))}$$');
loglog(mesh_size,error_v_infty,'-ks','DisplayName','$$\left\|v-v_h\right\|_{\ell^{\infty} ([0,T];L^2(\Omega))}$$');

legend('show', 'Location', 'southeast');
grid on;
xlabel('h');
ylabel('error');