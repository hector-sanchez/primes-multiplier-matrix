require 'spec_helper'
require './primer'

RSpec.describe Primer do
	describe '.get_prime_numbers' do
		context 'when a starting point is given' do
			it 'returns an array of prime numbers' do
				@primer = Primer.new(47, 6)
				primes = @primer.send(:prime_numbers)

				expect(primes).to match_array [47, 53, 59, 61, 67, 71]
				expect(primes.length).to eq 6
			end
		end
		context 'when a starting point is NOT given' do
			it 'returns an array of prime numbers' do
				@primer = Primer.new(5)
				primes = @primer.send(:prime_numbers)

				expect(primes).to match_array [2, 3, 5, 7, 11]
				expect(primes.length).to eq 5
			end
		end
	end

	describe '.multiply_primes' do
		it 'returns a multidimensional array of the product of the prime arrays' do
			@primer = Primer.new(2)
			primes = @primer.send(:multiply_primes)

			expect(primes).to match_array [[2, 3], [4, 6], [6, 9]]
		end	
	end
end