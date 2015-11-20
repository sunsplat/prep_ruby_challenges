# http://www.vikingcodeschool.com/web-markup-and-coding/level-up-your-ruby-judo


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
# => 16
power(3,4)
# => 81

def power_two(base, exponent)
    # creating multiply array to store the numbers generated by .times loop
    multiply = []
    exponent.times do
        multiply.push(base)
    end
    # using .inject method to multiply array elements together
    # the number in paratheses is the initial number. Like for(var i = 0;..) in JS
    puts multiply.inject(1) { |initial, item| initial *= item }

end

power_two(100, 2)


# 2. Factorial
# Write a method factorial which takes a number and returns the product
# of every number up to the current number multiplied together.

def factorial(num)
    puts (1..(num.zero? ? 1 : num)).inject(:*)
end

factorial(5)
# => 120
factorial(10)
# => 3628800


# 3. Uniques
# Write a method uniques which takes an array of items and returns the array without any duplicates. Don’t use Ruby’s uniq method!