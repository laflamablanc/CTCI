def one_away(stringA, stringB)
    #Check if its one insert away
    hash = {}
    sum = 0
    stringA.split('').each do |letter|
        if hash[letter] 
            hash[letter] += 1
            sum += 1
        else
            hash[letter] = 1
            sum +=1
        end
    end
    stringB.split('').each do |letter|
        if hash[letter]
            hash.delete(letter)
            sum -= 1 
        else
            hash[letter] = -1
            sum += 1
        end
    end
    puts sum
    if sum <2
        return true
    else
        return false
    end
end

p one_away('pale', 'ple')
p one_away('pales', 'pale')
p one_away('pale', 'pales')
p one_away('pales', 'ple')
p one_away('pale', 'bale')
p one_away('pale', 'bake')