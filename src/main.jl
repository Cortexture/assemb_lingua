text_vector = open("../data/exploring_the_wonders_of_nature.txt") |> readlines
words = replace(text_vector[1],
                  "," => "", "." => "",
                  "—" => " ") |> split

println("The type of words: ", typeof(words))

#=
cmu_dataset = open("../data/cmudict-0.7b") |> readlines

entries = split.(cmu_dataset, "  ")

println("The type of entries: ", typeof(entries))
println("The size of entries: ", size(entries))
println("The type of entries[1]: ", typeof(entries[1]))
println("The size of entries[1]: ", size(entries[1]))

# ARPAbet_dictionary = set_dictionary(cmu_dataset)


# need to remove the punctuation lines and the header of the text

# now need to get IPA encodings for the words here
# then re-add the punctuation

=#
