#Check Permutation: GIven 2 string, write a method to decide if one is a permutation of the other

def permuation?(string_a, string_b)
    if string_a.length != string_b.length
        return false
    end
    hash_a = {}
    hash_b = {}
    string_a.split('').each_with_index do |letter, idx|
        hash_a[letter] ? hash_a[letter]+= 1 : hash_a[letter] = 1
        hash_b[string_b[idx]] ? hash_b[string_b[idx]]+= 1 : hash_b[string_b[idx]] = 1
    end

    if hash_a != hash_b
        return false
    end
    return true
end

p permuation?('racecar', 'racerac') #True
p permuation?('racecar', 'racerace') #False
p permuation?('racecar', 'racerar') #False
p permuation?('carrace', 'racerac') #True
