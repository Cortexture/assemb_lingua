file = open("../data/exploring_the_wonders_of_nature.txt")
text_vector = readlines(file);
close(file)

function get_words(_text) 
    sans_special_char = split(_text[1], "—")
    strings_rejoined = [sans_special_char[1] * " " * sans_special_char[2]]
    punctuation_removed = replace(strings_rejoined[1],
                                  "," => "", "." => "", "'" => "")
    _words = split(punctuation_removed)
end

words = get_words(text_vector)

# now need to get IPA encodings for the words here
# then re-add the punctuation

