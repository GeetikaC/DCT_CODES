#Q1: Find the sum of a given array:
numbers = [10,25,30,45]


def sum_of_array(input_array)
	sum = 0
	input_array.each do |number|
		sum += number
	end
	return sum
end

puts "Sum of the array: #{sum_of_array(numbers)}"

#Or we can also use 'inject'
sum_via_inject = numbers.inject(:+)
puts "Sum via inject method: #{sum_via_inject}" 


#Q2: Find the sum of all even numbers in the given array

def sum_of_even(input_array)
	even_array = []
	input_array.each do |number|
		if number%2 == 0
			even_array.push(number)
		end
	end
	return even_array.inject(:+)
end

puts "Sum of evens: #{sum_of_even(numbers)}" 



#Q3: Sum of numbers in odd indices

def sum_in_odd_indices(input_array)
	sum = 0
	input_array.each_with_index do |number,index|
		if index%2 != 0
			sum += number
		end
	end
	return sum
end

puts "Sum of numbers in odd indices: #{sum_in_odd_indices(numbers)}" 




#Q4: Sum of numbers in the array which are less than 30

def sum_of_less_than_thirty(input_array)
	sum = 0
	input_array.each do |number|
		if number < 30
			sum += number
		end
	end
	return sum
end

puts "Sum of numbers less than 30: #{sum_of_less_than_thirty(numbers)}" 