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

    result = Hash.new(0)
    possible_combinations(word).map do |a|
        collection.map do |b|
            if a.downcase == b.downcase
                result[b] += 1
            end
        end
    end
    result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)