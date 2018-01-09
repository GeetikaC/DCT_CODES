#Q5: Print a given array as a string without using 'join' method:
myColor = ["Red", "Green", "White", "Black"]
def print_a_string(input_array)
	output_string = ""
	input_array.each_with_index do |color,index|
		if index == input_array.length-1
			output_string += color
		else
			output_string += color + ","
		end
	end
	return output_string
end

puts "The string for the given array: #{print_a_string(myColor)}" 



#Q6: Print the unique array, removing multiple occurences of the same element, DO NOT USE 'uniq' method:
numbers = [ 10,30,20,10,20,30]

def print_uniq(input_array)
	i = 0
	output_array = []
	input_array = input_array.sort
	while i < input_array.length
		if input_array[i] == input_array[i+1]
			input_array.delete_at(i)
		end
		i+=1
	end
	return input_array
end

puts "The unique array is: #{print_uniq(numbers)}" 



#Q7: Check if given input is an array or not:
a = [10,20,30]
b = 10

def check_is_array(input)
	if input.is_a? Array
		"an Array"
	else
		"not an Array"
	end
end

puts "Input a is: #{check_is_array(a)}"
puts "Input b is: #{check_is_array(b)}"



#Q8: Given an input string, change the Case of the letters to the opposite of what they were before, i.e. if Capital then lowercase & vice versa
input = "The Quick Brown Fox"
input_array = input.split("")

def switch_cases(input_array)
	output_array = []
	input_array.each do |value|
		if value == value.downcase
			output_array.push(value.upcase)
		elsif value == value.upcase
			output_array.push(value.downcase)
		end
	end
	return output_array.join("")
end

puts switch_cases(input_array)

