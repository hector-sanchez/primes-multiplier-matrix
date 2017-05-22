class Primer
	def initialize(starting_point = 2, number_of_primes)
		@starting_point = starting_point
		@number_of_primes = number_of_primes
	end

	def print_primes_table_table
		multiply_primes.each do |r|
		  puts r.each {|p| p }.join(" ")
		end.compact!
	end

	private 

		def prime_numbers
			get_primes(@starting_point, @number_of_primes)
		end

		def multiply_primes
			primes_array = prime_numbers
			primes_array.map {|x| primes_array.map {|y| x * y } }.unshift(primes_array)
		end	

		def get_primes(start=2, limit)
			Enumerator.new do |y|
		    n = start < 2 ? 2 : start
		    y << n if is_prime?(n)

		    loop do
	        n = next_prime(n)
	        y << n
		    end
	    end.take(limit)
		end

		def is_prime?(number)
	    return false if number <= 1

	    2.upto(Math.sqrt(number).to_i) do |x|
	      return false if number % x == 0
	    end

	    true
	  end

	  def next_prime(number)
	    n = number + 1
	    n = n + 1 until is_prime?(n)
	    n
	  end
end

Primer.new(10).print_primes_table_table