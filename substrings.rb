def substrings(string, dictionary)
    string = string.gsub(/\W/, ' ')
    words = string.split(' ')

    dictionary.reduce(Hash.new(0)) do |result,chr|
      words.each do |i|
        if i.include?(chr)
        result[chr] += 1
      end
    end
    result
  end
end

puts(substrings("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]))
