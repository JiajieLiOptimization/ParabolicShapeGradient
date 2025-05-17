% adjoint BE
mesh_size = [0.25,0.125,0.0625,0.03125];
reference1 = [8,4,2,1];
reference2 = [64,16,4,1];
error_v_ell2 = [0.801485,0.395796,0.196446,0.098041];
error_v_infty = [0.163918,0.0460715,0.0115223,0.00254799];

loglog(mesh_size,0.09*reference1,'--k','DisplayName','$$O(h)$$');
hold on;
loglog(mesh_size,0.003*reference2,':k','DisplayName','$$O(h^2)$$');
loglog(mesh_size,error_v_ell2,'-k^','DisplayName','$$\left\|v-v_h \right\|_{\ell^2 ([0,T];H^1(\Omega))}$$');
loglog(mesh_size,error_v_infty,'-ks','DisplayName','$$\left\|v-v_h\right\|_{\ell^{\infty} ([0,T];L^2(\Omega))}$$');

legend('show', 'Location', 'southeast');
grid on;
xlabel('h');
ylabel('error');