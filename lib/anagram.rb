class Anagram
    attr_accessor :compare_word

    def initialize (compare_word)
        @compare_word = compare_word
    end

    def sort_word(word)
        word.sort
    end

    def split_word(word)
        word.split("")
    end

    def compare_word(word1, word2)
        word1 == word2
    end

    def match(match)
        comp_word = split_word(@compare_word)
        comp_word = sort_word(comp_word)
        matched_list = []

        match.map do |w|
            m = split_word(w)
            m = sort_word(m)
            matched_list << w if compare_word(m, comp_word)
        end
        return matched_list
    end
end
