f = [-1,3,-2,8,-10];
A = [3,-1,2,4,5;
    -2,4,0,-5,8;
    -4,3,8,20,2;
    ]
b = [7;12;7]
lb = [-10;-5;-30;-8;-20]
[x1, fval] = linprog(-f', A, b, [], [], lb, [])
[x2, exitflag] = simpleks(-f', A, b, lb)

assert(x2, x1)
