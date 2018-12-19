input_lines = gets
input = input_lines.split(' ')
r_1 = input[0].to_i
r_2 = input[1].to_i

snow_house = r_1 * r_1 * r_1 - r_2 * r_2 * r_2

puts snow_house
