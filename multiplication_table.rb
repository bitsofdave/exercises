##
# MultiplicationTable class used for creating a multiplication table
class MultiplicationTable

  def initialize(numbers)
    @numbers = numbers

    @matrix = create(numbers)
  end

  ##
  # Creates multiplication table from list of numbers
  #
  # @param numbers [Array<String>] array containing table rows
  def create(numbers)
    max_width = (numbers.last * numbers.last).to_s.length + 1
    matrix = []
    headers = [''] + numbers

    headers.each do |row_header|
      matrix << numbers.inject(format(max_width, row_header)) do |acc, num|
        acc + format(max_width, [row_header.to_i, 1].max * num)
      end
    end
    matrix
  end

  ##
  # Creates a string of a fixed width
  #
  # @param width [Fixnum] width of desired string
  # @param str [String] string to format
  #
  # @return [String] formatted string
  def format(width, str)
    "%#{width}s" % str
  end

  ##
  # Displays multiplication table
  def display
    puts matrix.join("\n")
  end

  private

  attr_reader :numbers, :matrix
end
