def isPalindrome?(number)
    number.to_s == number.to_s.reverse
end

def isPrime?(number)
    (2...number).each do |num| 
        if number % num == 0
            return false
        end
    end
    return true
end


def palindromes(n)
    2.upto(Float::INFINITY).lazy.filter {|num| isPalindrome?(num) && isPrime?(num)}.first(n)
end

puts palindromes(10)