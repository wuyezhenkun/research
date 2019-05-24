
filename = input()

with open(filename, 'r') as f:
    lines = f.readlines()
with open(filename, 'w') as f:
    for line in lines:
        line.strip("\n")
        if not line.startswith('!'):
            f.write(line)
