# # # # color = ["Blue ", "Green", "Red", "Orange", "Violet", "Indigo", "Yellow "]

# # # # puts color
# # # # puts "Enter your choice"
# # # # choice = gets.chomp

# # # # def selection(input_choice)
# # # # 	case input_choice
# # # # 	when "Blue"
# # # # 		return "Choice 1 is Blue"
# # # # 	when "Green"
# # # # 		return "Choice 2 is Green"
# # # # 	when "Red"
# # # # 		return "Choice 3 is Red"
# # # # 	when "Orange"
# # # # 		return "Choice 4 is Orange"
# # # # 	when "Violet"
# # # # 		return "Choice 5 is Violet"
# # # # 	when "Indigo"
# # # # 		return "Choice 6 is Indigo"
# # # # 	when "Yellow"
# # # # 		return "Choice 7 is Yellow"
# # # # 	else
# # # # 		return "Invalid choice"
# # # # 	end
# # # # end

# # # # puts selection(choice)



#Q9: Given an array, print it out as a list, ie. : Choice 1 is Blue, Choice 2 is Green, ...
color = ["Blue", "Green", "Red", "Orange", "Violet", "Indigo", "Yellow"]
color.each_with_index do |value,index|
	puts "Choice #{index+1} is #{value}"
end




#Q10: Flatten a given multi-dimentional array and display all elements as a single dimensional:
array = [1,2,[3,4],[4],[2,3],6]

def flatten_array(input_array)
	output_array = []
	input_array.each do |value|
		if value.is_a? Array
			i = 0
			while i < value.length
				output_array.push(value[i])
				i+=1
			end
		else
			output_array.push(value)
		end
	end	
	return output_array
end

puts "The Flattened array is: #{flatten_array(array)}"



#Q11: Write a function to output an array which is the merge of two input arrays, includes each element only once:
array1 = [1, 2, 3]
array2 = [2, 30, 1] 
# merge_array(array1, array2)
# output = [3, 2, 30, 1]

def merge_array(input_array1, input_array2)
	output_array = []
	output_array = input_array1 + input_array2
	return output_array.uniq
end

puts "The output array is: #{merge_array(array1, array2)}"



#Q12: Find the string with the most weight, if "a" has a weight of 1 and "z" has wt 26 according to its alphabetical order:
input_string1 = "batman"
input_string2 = "superman"

input_string1_array = input_string1.split("")
input_string2_array = input_string2.split("")

weight_hash = {}

weight_array = ("a".."z").to_a
weight_array.each_with_index do |value,index|
	weight_hash[value] = index + 1
end

def find_weight(input_array, weight_hash)
	weight = 0
	input_array.each do |value|
		weight += weight_hash[value]
	end
	return weight
end


def greater_string(string1, string2)
	if string1 > string2
		"string1 is greater"
	elsif string1 == string2
		"strings are equal"
	else
		"string2 is greater"
	end
end

weight_of_string1 = find_weight(input_string1_array,weight_hash)
weight_of_string2 = find_weight(input_string2_array,weight_hash)
puts "weight of string 1 #{weight_of_string1}"
puts "weight of string 2 #{weight_of_string2}"
puts "greatest string is: #{greater_string(weight_of_string1, weight_of_string2)}"

