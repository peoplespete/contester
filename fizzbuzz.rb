# "Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”."
nums = 1..100
nums.each do |num|
  message = ""
  message << "Fizz" if num % 3 == 0
  message << "Buzz" if num % 5 == 0
  puts message == "" ? num : message
end
