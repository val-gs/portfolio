input_lines = gets
input = input_lines.split(' ')
length = input[1].length
num = input[0].to_i
rotate = 0

for i in 0..num do
    if input[1] == input[2] then
        break
    end

    temp = input[1].split('')
    temp2 = temp[length - 1]
    for j in 1..(length) do
        temp[length - j] = temp[(length - j) - 1]
    end
    temp[0] = temp2
    input[1] = temp.join
    rotate += 1
end

puts rotate
