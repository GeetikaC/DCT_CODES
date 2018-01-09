#Q13: Remove all characters from a string input, except for alphabets:
input = "D&^CT @A345CAD*&$EM43Y"
input_array = input.split("")

$alphabets_array = ("A".."Z").to_a

def remove_other_characters(input_array)
	output_array = []
	input_array.each do |value|
		if $alphabets_array.include? value
			output_array.push(value)
		end
	end
	return output_array.join("")
end

puts "The string #{input} becomes: #{remove_other_characters(input_array)}" 




#Q14: Find the first unique element in the given array
input_array = [9, 4, 9, 7, 6, 4]
compute_array = input_array.sort

i = 0
count_hash = {}
count = 1
temp_var = compute_array[0]

while i < compute_array.length
	if temp_var == compute_array[i+1]
		count += 1
	else
		count_hash[temp_var] = count
		temp_var = compute_array[i+1]
		count = 1							#reset to 1
	end
	i += 1
end

puts "Each element occurences: #{count_hash}"

input_array.each do |value|
	if count_hash[value] == 1
		puts "The first unique element in the given array is #{value}"
		break
	end
end








#Q15:
input_array = [1,4,4,4,0,4,3,3,1] 
# should return [1,12,0,4,6,1]

i = 0
count = 1
temp_var = input_array[0]
output_array = []

while i < input_array.length
	if temp_var == input_array[i+1]
		count += 1
	else
		output_array.push(temp_var*count)
		count = 1							#to reset for next element's count
		temp_var = input_array[i+1]
	end
	i += 1
end

puts "#{input_array} becomes #{output_array}"








#Q16: Given an input array "data", return an array right-shifted if n>0, left-shifted if n<0 and as is if n=0

# rotate(data, 1) // => [5, 1, 2, 3, 4]
# rotate(data, 2) // => [4, 5, 1, 2, 3]
# rotate(data, 3) // => [3, 4, 5, 1, 2]
# rotate(data, 0) // => [1, 2, 3, 4, 5]

input_data = [1, 2, 3, 4, 5]

def rotate(data, n)
	i = 0
	case 
	when n > 0
		# rotate right
		while i < n
			data.unshift(data.pop)
			i += 1
		end
		return data
	when n < 0
		# rotate left
		while i < n.abs
			data.push(data.shift)
			i += 1
		end
		return data
	else
		# return unchanged
		return data
	end
end


puts "Right rotate by 2: #{rotate(input_data, 2)}"