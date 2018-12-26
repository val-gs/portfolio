input_lines = gets
inputs = input_lines.split(' ')

candidates = Array.new(inputs[0].to_i + 1, 0)
candidates[inputs[0].to_i] = inputs[1].to_i

for i in 0..inputs[2].to_i - 1 do
    input = gets.to_i
    for j in 0..inputs[0].to_i do
        if j != input - 1 && candidates[j] > 0 then
            candidates[input - 1] += 1
            candidates[j] -= 1
        end
    end
end

answers = Array.new(inputs[0].to_i)
max = 0
j = 0
for i in 0..inputs[0].to_i - 1 do
    if candidates[i] > max then
        max = candidates[i]
        j = 0
        answers[j] = i + 1
    elsif candidates[i] == max then
        j += 1
        answers[j] = i + 1
    end
end

for i in 0..j do
    puts answers[i]
end
