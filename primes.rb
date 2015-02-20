#!/usr/bin/env ruby

$VERBOSE = nil  # To ignore obsolete Ruby 1.8 usage: "Prime.new".
require 'prime'

def first_n_primes1(n)
  return "n must be an integer" unless n.is_a? Integer
  return "n must be greater than 0" if n <= 0
  prime_array ||= []
  prime = Prime.new # Obsolete Ruby 1.8 usage.
  n.times do
    prime_array << prime.next
  end
  prime_array
end

def first_n_primes2(n)
  return "n must be an integer" unless n.is_a? Integer
  return "n must be greater than 0" if n <= 0
  prime = Prime.instance # Ruby 1.9 usage: creates an array automatically.
  prime.first n
end

puts first_n_primes1(10)
puts first_n_primes2(10)
puts first_n_primes1("10")
puts first_n_primes2("10")
puts first_n_primes1(-10)
puts first_n_primes2(-10)
