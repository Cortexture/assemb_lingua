file = open("../data/exploring_the_wonders_of_nature.txt")
text_vector = readlines(file);
close(file)

words = replace(text_vector[1],
                  "," => "", "." => "", "'" => "", 
                  "—" => " ") |> split

# now need to get IPA encodings for the words here
# then re-add the punctuation

