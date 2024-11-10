import matplotlib.pyplot as plt

def cost_function(x):
    return (x + 3) ** 2

def gradient(x):
    return 2 * (x + 3)

learning_rate = 0.1
initial_x = 2.0
num_iterations = 100

x_values = []
y_values = []
x = initial_x
for i in range(num_iterations):
    x_values.append(x)
    y_values.append(cost_function(x))
    gradient_value = gradient(x)
    x = x - learning_rate * gradient_value

    print(f'Iteration {i+1}: x = {x}, Cost = {cost_function(x)}')

print(f'Optimal x: {x}')

plt.plot(x_values, y_values, 'ro-')
plt.title('Gradient Descent Visualization for y = (x + 3)^2 by AB')
plt.xlabel('x')
plt.ylabel('y')
plt.show()

print(f'Optimal x: {x}')
