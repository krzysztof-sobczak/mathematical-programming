x0 = [1;-1;2]
e = 1e-6;
[ Dxk, Dk, Dline ] = DFP( @fun, x0, e);
[ xk, k, line ] = GS_BFGS( @fun, x0, e);