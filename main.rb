def substrings(word, collection)

    def possible_combinations(str)
        combination = []

        string = str.downcase.gsub(/[^a-z0-9\s]/i, '').split.join
        i = 0
        while i < string.length
            j = i + 1
            while j < (string.length + 1)
                combination.push(string[i...j])
                j += 1
            end
            i += 1
        end
        combination
    end
end