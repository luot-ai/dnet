# Define the numbers
numbers = [12544, 3136, 784, 196, 49]

# Perform calculations
results = [
    numbers[0] * 48,
    numbers[1] * 16 * 32,
    numbers[2] * 16 * 128,
    numbers[3] * 32 * 256,
    numbers[4] * 64 * 512
]

# Print results
for i, result in enumerate(results, 1):
    print(f"Result {i}: {result}")
