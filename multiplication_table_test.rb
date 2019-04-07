require 'minitest/autorun'
require_relative 'multiplication_table'

describe 'MultiplicationTable' do

  let(:numbers) { [2, 3, 5] }
  let(:matrix) { subject.create(numbers) }

  subject { MultiplicationTable.new(numbers) }

  describe '#create' do
    it 'creates a multiplication table' do
      expected = [
        "     2  3  5",
        "  2  4  6 10",
        "  3  6  9 15",
        "  5 10 15 25"]

      assert_equal subject.create(numbers), expected
    end
  end

  describe '#format' do
    let(:str) { 'hello' }

    describe 'when width is 0' do
      let(:width) { 0 }
      it 'returns the original string' do
        assert_equal subject.format(width, str), str
      end
    end

    describe 'when width is 10' do
      let(:width) { 10 }
      it 'returns the original string prepended with 5 spaces' do
        assert_equal subject.format(width, str), "     #{str}"
      end
    end
  end

  describe '#display' do
    it 'prints to stdout' do
      expected = <<-MATRIX
     2  3  5
  2  4  6 10
  3  6  9 15
  5 10 15 25
MATRIX

      assert_output(stdout = expected) { subject.display }
    end
  end
end
