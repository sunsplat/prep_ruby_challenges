# 1. Power
# Write a method 'power' which takes two integers ('base' and 'exponent') and
# returns the 'base' raised to the power of 'exponent'. Do not use Ruby's '**'
# operator for this!

def power(base, exponent)
    multiply = []
    exponent.times do
        multiply.push(base)
    end
    product = 1
    multiply.each { |i| product *= i}
    puts product
end

power(2,4)
power(3,4)

def power_two(base, exponent)
    multiply = []
    exponent.times do
        multiply.push(base)
    end
    multiply.inject(1) { |initial, item| initial *= item }
    puts multiply
end

power_two(100, 2)