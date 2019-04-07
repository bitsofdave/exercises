require 'minitest/autorun'

require_relative 'prime_number_test'
require_relative 'multiplication_table_test'

describe 'main' do
  describe 'with invalid input' do
    let(:error_message) { "\"Please enter an amount greater than 0. Ex. `ruby prime_multiplication_table.rb 10`\"\n" }

    it 'returns an error message when input is empty' do
      ARGV.replace([])

      assert_output(stdout = error_message) { load 'prime_multiplication_table.rb' }
    end

    it 'returns an error message when input is an empty string' do
      ARGV.replace([''])

      assert_output(stdout = error_message) { load 'prime_multiplication_table.rb' }
    end

    it 'returns an error message when input is 0' do
      ARGV.replace(['0'])

      assert_output(stdout = error_message) { load 'prime_multiplication_table.rb' }
    end

    it 'returns an error message when input is negative' do
      ARGV.replace(['-1'])

      assert_output(stdout = error_message) { load 'prime_multiplication_table.rb' }
    end
  end

  describe 'with valid input' do
    it 'displays a multiplication table' do
      ARGV.replace(['2'])
      expected = <<-MATRIX
   2 3
 2 4 6
 3 6 9
MATRIX
      assert_output(stdout = expected) { load 'prime_multiplication_table.rb' }
    end
  end
end
