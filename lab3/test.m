[a1, a2, a3] = przedzial_niepewnosci(@(x) x^2, -1)
assert([a1 ,a2, a3], [-1, 0, 1])
[a1, a2, a3] = przedzial_niepewnosci(@(x) cos(x), -0.01, 6.29)
assert([a1 ,a2, a3], [-0.01, 3.135, 6.28])
