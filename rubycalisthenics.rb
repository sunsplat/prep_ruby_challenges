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
# Write a method uniques which takes an array of items and returns 
# the array without any duplicates. Don’t use Ruby’s uniq method!

def uniques(arr)
    arr_values = []
    grouped = arr.group_by {|e| e}
    grouped.each do |key, value|
        if value.length > 1
            arr_values.push(value[0])
        else
            arr_values.push(value)
        end
    end
    print arr_values.flatten!
end

uniques([1, 5, 'frog', 2, 1, 3, 'frog'])

# 4. Combinations
# Write a method combinations which takes two arrays of
# strings and returns an array with all of the combinations
# of the items in them, listing the first items first.

def combinations(arr_one, arr_two)
    arr_join = []
    arr_one.each do |x|
        arr_two.each do |y|
            arr_join.push(x + y)
        end
    end
    print arr_join
end

combinations(["on", "in"],["to", "rope"])

# 5. Primes
# Write a method is_prime? which takes in a number and 
# returns true if it is a prime number.

def is_prime?(num)
    if num == 2 || num == 3 || num == 5
        return true
    elsif num % 2 == 0 || num % 3 == 0 || num % 5 == 0
        return false
    else
        return true
    end
end

is_prime?(7)
is_prime?(14)
is_prime?(25)

# 6. Rectangle Overlap
# Write a method overlap which takes two rectangles defined 
# by the coordinates of their corners, 
# e.g. [[0,0],[3,3]] and [[1,1],[4,6]], and determines whether 
# they overlap. You can assume all coordinates are positive integers.

def overlap(first_rect, second_rect)
    a1 = first_rect[0]
    a2 = first_rect[1]
    b1 = second_rect[0]
    b2 = second_rect[1]

     if b1[0] < a2[0] && b1[1] < a2[1]
        return true
    else 
        return false
    end

end

overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] )
overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] )

    