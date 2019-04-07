require 'minitest/autorun'
require_relative 'prime_number'

describe 'PrimeNumber' do

  subject { PrimeNumber }

  describe '.find_primes' do
    it 'finds the first 2 prime numbers' do
      assert_equal subject.find(2), [2, 3]
    end

    it 'finds the first 10 prime numbers' do
      assert_equal subject.find(10), [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    end

    it 'finds the first 100 prime numbers' do
      expected = [
        2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67,
        71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139,
        149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223,
        227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293,
        307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383,
        389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463,
        467, 479, 487, 491, 499, 503, 509, 521, 523, 541
      ]

      assert_equal subject.find(100), expected
    end
  end

  describe '.is_prime?' do
    it '2 is prime' do
      assert_equal subject.is_prime?(2), true
    end

    it '3 is prime' do
      assert_equal subject.is_prime?(3), true
    end

    it '4 is not prime' do
      assert_equal subject.is_prime?(4), false
    end

    it '5 is prime' do
      assert_equal subject.is_prime?(5), true
    end

    it '6 is prime' do
      assert_equal subject.is_prime?(6), false
    end

    it '7 is prime' do
      assert_equal subject.is_prime?(7), true
    end
  end
end
