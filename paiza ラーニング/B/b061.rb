# 未完

def lucky_bag(inputs, num, sum, min, min_value, answer)
    for i in num..inputs.length - 1 do
        return answer + lucky_bag(inputs, i + 1, sum, min, min_value, answer)
        temp = sum + inputs[i]
        return answer + lucky_bag(inputs, i + 1, temp, min, min_value, answer)
        if temp > min_value && temp - min <= min_value then
            answer += 1
        end
    end
    if sum > min_value && sum - min <= min_value then
        return answer + 1
    elsif
        return answer
    end
end

min_value = gets.to_i
input_lines = gets.to_i
inputs = Array.new(input_lines)
answer = 0

for i in 0..input_lines - 1 do
    inputs[i] = gets.to_i
end

for i in 0..input_lines - 1 do
    answer = answer + lucky_bag(inputs, i + 1, inputs[i], inputs[i], min_value, answer)
end

puts answer
