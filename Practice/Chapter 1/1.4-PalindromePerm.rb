def palindrome(string)
    hash = {}
    sum = 0
    string.split('').each do |letter|
        if hash[letter]
            hash[letter] = nil
            sum -= 1
        else
            hash[letter] = 1
            sum += 1
        end
    end

    puts hash, sum
    if sum == 0 || sum == 1
        return true
    else
        return false
    end

end

p palindrome('racecar')
p palindrome('raceecar')
p palindrome('racecare')
p palindrome('racecarr')