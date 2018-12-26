input_lines = gets.to_i
serch_word = gets.chomp
inputs = Array.new(input_lines)
bool = false

for i in 0..(input_lines - 1) do
    inputs[i] = gets.chomp

    if inputs[i].include?(serch_word) then
        puts inputs[i]
        bool = true
    end
end

if !bool then
    puts "None"
end
