def urlify(string)
    i = 0
    while i<string.length
        if string[i] == ' '
            string[i] = '%20'
        end
        i += 1
    end
    return string
end

p urlify('Today I went to the store to buy milk.')