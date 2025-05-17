% BDF2
mesh_size = [1/4,1/8,1/16,1/32,1/64];
Order1 = [16,8,4,2,1];
Order2 = [256,64,16,4,1];
BDF2_Bou_2 = [11.2179,5.34611,1.72521,0.709287,0.363749];
BDF2_Bou_3 = [11.8198,7.44629,2.54807,1.0826,0.545823];
BDF2_Dis_2 = [2.20657,0.687642,0.177345,0.0387212,0.00872246];
BDF2_Dis_3 = [2.49809,0.728185,0.185098,0.0442838,0.0117073];
loglog(mesh_size,0.5*Order1,'--k','DisplayName','$$O(h)$$')
hold on;
loglog(mesh_size,0.008*Order2,'-.k','DisplayName','$$O(h^2)$$')
loglog(mesh_size,BDF2_Bou_2,'-k+','DisplayName','$$\gamma=2$$, Boundary')
loglog(mesh_size,BDF2_Bou_3,'-k^','DisplayName','$$\gamma=3$$, Boundary')
loglog(mesh_size,BDF2_Dis_2,'-k*','DisplayName','$$\gamma=2$$, Distributed')
loglog(mesh_size,BDF2_Dis_3,'-ks','DisplayName','$$\gamma=3$$, Distributed')
legend('show', 'Location', 'southeast');
grid on;
xlabel('h');
ylabel('error');