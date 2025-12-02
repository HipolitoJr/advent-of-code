file = File.read('input.txt')
inputs = file.split("\n")

@pointer = 50
@password = 0

for input in inputs
	puts "Input: #{input} | Pointer: #{@pointer}"
	rotation_direction = input.slice!(0, 1) # R ou L
	rotation_size = input.to_i

	for i in (1..rotation_size)
		if rotation_direction == "L"
			@pointer -= 1
			@pointer = 99 if @pointer == -1
		elsif rotation_direction == "R"
			@pointer += 1
			@pointer = 0 if @pointer == 100
		else
			next
		end
		if @pointer == 0
			puts "> password current: #{@password}"
			@password += 1
		end
	end
end

puts "The password using method 0x434C49434B, is: #{@password}"
