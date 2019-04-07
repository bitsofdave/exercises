##
# PrimeNumber class used for finding prime numbers
class PrimeNumber

  ##
  # Find first n primes
  #
  # @param n [Fixnum] number of prime numbers to find
  # @return [Array<Fixnum>] list of prime numbers
  def self.find(n)
    i = 2

    primes = []
    while primes.length < n
      primes << i if is_prime?(i)
      i += 1
    end
    primes
  end

  ##
  # Checks whether n is a prime number
  #
  # @param n [Fixnum] number to check
  # @return [bool] result of check
  def self.is_prime?(n)
    (n / 2).downto(2) do |i|
      return false if n % i == 0
    end

    true
  end
end
