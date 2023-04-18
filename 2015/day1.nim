let
    file = open("input1.txt")
    instructions = file.readLine()

var
    floor: int = 0
    basement_index: int = 0

for i, c in instructions:
    if c == '(': floor += 1
    else: floor -= 1

    if basement_index == 0 and floor == -1:
        basement_index = i + 1

echo(floor, '\n', basement_index)
file.close()