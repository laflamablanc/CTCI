#Does a String contain all unique characters?

def unique?(string)
    hash = {}
    string.split('').each do |letter|
        if hash[letter]
            return false
        else
            hash[letter] = 1
        end
    end
    return true
end

p unique?('plant') #True
p unique?('baseball') #False
p unique?('23kdm^&pl') #True