using DataFrames

text_vector = open("../data/exploring_the_wonders_of_nature.txt") |> readlines
words = replace(text_vector[1],
                  "," => "", "." => "",
                  "—" => " ") |> split .|> uppercase

# now need to get IPA encodings for the words here
# then re-add the punctuation

cmu_text = open("../data/cmudict-0.7b") |> readlines

