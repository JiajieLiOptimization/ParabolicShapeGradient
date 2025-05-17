# ParabolicShapeGradient
Numerical approximations of shape gradients were noticed in the shape optimization community. The error of the distributed shape gradient is shown to have super-convergence rate w.r.t. mesh size than that of the boundary type. A priori error estimates w.r.t. time step size are also presented. 

Example 1:
We first verify convergence rates of numerical schemes for solving adjoint problem. Let \Omega=(0,1)^2 and T=3. Choose the exact solution u(t,x_1,x_2)=\frac{1}{20}(3- 4 \pi^2(T-t))(T - t)^2 \sin( \pi x_1) \sin( \pi x_2).

Example 2:
Set \Omega=(0,1)^2. We use the backward Euler and BDF2 schemes to compute approximate dual norms with k=5 \times 10^{-4} and polynomial degree \gamma=2 and \gamma=3.

Example 3:
Let \Omega be an ellipse. We shows that the error of approximate boundary type of shape gradient has a linear convergence rate and the error of distributed shape gradient has second-order convergence w.r.t. mesh size h.

Exampele 4:
Let \Omega be an L-shaped domain (0,1)^2\setminus[0.5,1)^2. The result illustrates that using the backward Euler method the error of approximate boundary shape gradient convergences as \mathcal{O}(h^{0.5}), while that of the distributed shape gradient has a higher convergence rate of \mathcal{O}(h^{1.5}).
