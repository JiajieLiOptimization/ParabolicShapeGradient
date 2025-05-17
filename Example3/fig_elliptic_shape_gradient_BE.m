% BE
mesh_size = [2*pi/64,2*pi/128,2*pi/256];
reference1 = [4,2,1];
reference2 = [16,4,1];
error_Bou_gamma2 = [1.24161,0.59037,0.207452];
error_Bou_gamma3 = [1.34259,0.645926,0.227338];
error_Dis_gamma2 = [0.407013,0.120438,0.0362604];
error_Dis_gamma3 = [0.411982,0.113573,0.0254156];
loglog(mesh_size,0.28*reference1,'-.k','DisplayName','$$O(h)$$')
hold on;
loglog(mesh_size,0.03*reference2,'--k','DisplayName','$$O(h^2)$$')
loglog(mesh_size,error_Bou_gamma2,'-k+','DisplayName','$$\gamma=2$$, Boundary')
loglog(mesh_size,error_Bou_gamma3,'-k^','DisplayName','$$\gamma=3$$, Boundary')
loglog(mesh_size,error_Dis_gamma2,'-k*','DisplayName','$$\gamma=2$$, Distributed')
loglog(mesh_size,error_Dis_gamma3,'-ks','DisplayName','$$\gamma=3$$, Distributed')
legend('show', 'Location', 'southeast');
grid on;
xlabel('h');
ylabel('error');