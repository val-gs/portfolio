input_lines = gets.to_i
elevater = 1
move = 0

for i in 0..input_lines - 1 do
    input = gets.to_i

    if elevater > input then
        move += elevater - input
    else
        move += input - elevater
    end

    elevater = input
end

puts move
