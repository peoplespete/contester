# You have an array of integers, and for each index you want to find the product of every integer except the integer at that index.
# Write a function get_products_of_all_ints_except_at_index() that takes an array of integers and returns an array of the products.

# For example, given:

#   [1, 7, 3, 4]
# your function would return:

#   [84, 12, 28, 21]
# by calculating:

#   [7*3*4, 1*3*4, 1*7*4, 1*7*3]


given = [1,2,3,4]

def transform(given)
  solution = []
  given.each_with_index do |num, i|
    multipiers = given.dup
    multipiers.delete_at(i)
    product = 1
    multipiers.each do |mult|
      product *= mult
    end
    solution.push product
  end
  solution
end

solution = [24,12,8,6]

puts "YOU SOLVED IT!!!" if transform(given) == solution
