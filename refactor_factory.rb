#This file shows practice of refactoring some existing code

$VERBOSE = nil
require 'prime'

def first_n_primes(n)

  puts "n must be an integer." unless n.is_a? Integer

  puts "n must be greater than 0." if n <= 0

  prime_array ||= []

  prime = Prime.new
  n.times do
    prime_array << prime.next
  end
  prime_array
end

first_n_primes(10)

=begin
The following code is before refactoring was completed:

$VERBOSE = nil    # Used because we are using Prime.new from Ruby 1.8
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  unless n.is_a? Integer
    return "n must be an integer."
  end

  if n <= 0
    return "n must be greater than 0."
  end

  prime_array = [] if prime_array.nil?

  prime = Prime.new
  for num in (1..n)
    prime_array.push(prime.next)
  end
  return prime_array
end

first_n_primes(10)
=end
