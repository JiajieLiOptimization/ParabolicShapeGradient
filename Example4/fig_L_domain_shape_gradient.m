% BE L-domain
mesh_size = [1/4,1/8,1/16,1/32,1/64];
ref1 = [sqrt(16),sqrt(8),sqrt(4),sqrt(2),1];
ref2 = [16*sqrt(16),8*sqrt(8),4*sqrt(4),2*sqrt(2),1];
error_Bou_gamma2 = [0.000103696,5.09299e-05,1.71982e-05,1.24403e-05,9.04867e-06];
error_Bou_gamma3 = [0.000104857,5.19098e-05,1.88062e-05,1.29437e-05,9.27351e-06];
error_Dis_gamma2 = [4.93715e-05,1.45293e-05,4.31611e-06,1.31301e-06,4.45182e-07];
error_Dis_gamma3 = [5.21266e-05,1.47691e-05,4.84275e-06,1.45284e-06,4.72884e-07];
loglog(mesh_size,0.9*9.27133e-06*ref1,'-.k','DisplayName','$$O(h^{\frac{1}{2}})$$')
hold on;
loglog(mesh_size,1*4.64888e-07*ref2,'--k','DisplayName','$$O(h^{\frac{3}{2}})$$')
loglog(mesh_size,error_Bou_gamma2,'-k+','DisplayName','$$\gamma=2$$, Boundary')
loglog(mesh_size,error_Bou_gamma3,'-k^','DisplayName','$$\gamma=3$$, Boundary')
loglog(mesh_size,error_Dis_gamma2,'-k*','DisplayName','$$\gamma=2$$, Distributed')
loglog(mesh_size,error_Dis_gamma3,'-ks','DisplayName','$$\gamma=3$$, Distributed')
legend('show', 'Location', 'southeast');
grid on;
xlabel('h');
ylabel('error');