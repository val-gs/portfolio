input_lines = gets
people = input_lines.to_i

input_lines = gets
inputs = input_lines.split(' ')
confectionery = inputs[0].to_i * inputs[1].to_i

puts confectionery % people
