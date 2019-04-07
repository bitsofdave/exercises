##
# Main application to generate multiplication table
#
# Usage: ruby prime_multiplication_table.rb 10
#

require_relative 'multiplication_table'
require_relative 'prime_number'

amount = ARGV[0].to_i

if (amount <= 0)
  p 'Please enter an amount greater than 0. Ex. `ruby prime_multiplication_table.rb 10`'
else
  numbers = PrimeNumber.find(amount)
  table = MultiplicationTable.new(numbers)
  table.display
end
