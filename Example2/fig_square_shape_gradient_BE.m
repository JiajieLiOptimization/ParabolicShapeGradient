% BE
mesh_size = [1/4,1/8,1/16,1/32,1/64];
Order1 = [16,8,4,2,1];
Order2 = [256,64,16,4,1];
BE_Bou_2 = [11.2149,5.53252,1.87542,0.753403,0.351776];
BE_Bou_3 = [11.7914,7.67474,2.727,1.13645,0.537074];
BE_Dis_2 = [11.2304,2.87552,0.686256,0.15964,0.030243];
BE_Dis_3 = [17.0807,4.90607,1.27177,0.304851,0.0670549];
loglog(mesh_size,0.5*Order1,'--k','DisplayName','$$O(h)$$')
hold on;
loglog(mesh_size,0.06*Order2,'-.k','DisplayName','$$O(h^2)$$')
loglog(mesh_size,BE_Bou_2,'-k+','DisplayName','$$\gamma=2$$, Boundary')
loglog(mesh_size,BE_Bou_3,'-k^','DisplayName','$$\gamma=3$$, Boundary')
loglog(mesh_size,BE_Dis_2,'-k*','DisplayName','$$\gamma=2$$, Distributed')
loglog(mesh_size,BE_Dis_3,'-ks','DisplayName','$$\gamma=3$$, Distributed')
legend('show', 'Location', 'southeast');
grid on; 
xlabel('h');
ylabel('error');