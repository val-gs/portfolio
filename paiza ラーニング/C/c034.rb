input_lines = gets
inputs = input_lines.split(' ')

if inputs[0] == "x" || inputs[2] == "x" then
    if inputs[1] == "+"
        answer = inputs[4].to_i - inputs[2].to_i
    elsif inputs[1] == "-"
        answer = inputs[4].to_i + inputs[2].to_i
    end
elsif inputs[4] == "x" then
    if inputs[1] == "+"
        answer = inputs[0].to_i + inputs[2].to_i
    elsif inputs[1] == "-"
        answer = inputs[0].to_i - inputs[2].to_i
    end
end

puts answer
