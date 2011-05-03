require 'set'

primes = [2]
i = 0

until primes.size == 10001
  i += 1
  candidate = primes.last + i
  barrier   = (primes.last**(0.5)).ceil

  unless (2..barrier).any? { |x| candidate % x == 0 }
    primes << candidate
    i = 0
  end
end

puts primes.last
