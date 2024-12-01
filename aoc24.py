from sympy import symbols, Eq, solve

t, u, w, a, b, c = symbols('t u w a b c')
x, y, z = symbols('x y z')

# Define the equations
eq1 = Eq(226812424329784 - 20 * t, x + a * t)
eq2 = Eq(313674772492962 - 101 * t, y + b * t)
eq3 = Eq(250967806511035 + 43 * t, z + c * t)

eq4 = Eq(156274983486737 + 45 * u, x + a * u)
eq5 = Eq(293490501315933 - 251 * u, y + b * u)
eq6 = Eq(293121959642065 - 173 * u, z + c * u)

eq7 = Eq(207764536837581 + 93 * w, x + a * w)
eq8 = Eq(163271244449071 + 245 * w, y + b * w)
eq9 = Eq(371393112488483 - 192 * w, z + c * w)

# Solve the system
solution = solve((eq1, eq2, eq3, eq4, eq5, eq6, eq7, eq8, eq9), (x, y, z, t, u, w, a, b, c))

print(solution)
