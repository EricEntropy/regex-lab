def starts_with_a_vowel?(word)
    #/.../ start and end of regex
    #\A for beginning of string 
    #[...] one of the characters to look for in the string
    #match? returns boolean
    /\A[aeiouAEIOU]/.match?(word)
end

def words_starting_with_un_and_ending_with_ing(text)
    array = text.split(' ')
    #\b...\b sets a boundary, that starts with "un" and ends with "ing"
    #\w+ includes any character between start and end of boundary, "un" to "ing"
    array.grep(/\bun\w+ing\b/)
end

def words_five_letters_long(text)
    array = text.split(' ')
    #"^" and "$" set beginning and end of word
    #.{5} sets the length of the word to 5
    array.grep(/^.{5}$/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    #^ start of string to $ end of str
    #starts capitalized [A-Z]
    #end with Any non-word character
    text.match?(/^[A-Z].*\W$/)
end

def valid_phone_number?(phone)
    #checks for letters from a-zA-Z in phone
    #negates when true cuz that means illegal chars in phone
    !phone.match?(/[a-zA-Z]/)
end
