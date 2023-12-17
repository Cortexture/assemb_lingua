using Pipe

text_vector = open("../data/exploring_the_wonders_of_nature.txt") |> readlines
words = replace(text_vector[1],
                  "," => "", "." => "",
                  "—" => " ") |> split .|> String
cmu_dataset = open("../data/cmudict-0.7b") |> readlines
entries_vector = @pipe split.(cmu_dataset, "  ") |> map.(String, _)
mykeys = Vector{String}()
myvalues = Vector{String}()
for entry ∈ entries_vector
    push!(mykeys, entry[1])
    push!(myvalues, entry[2])
end
entries = Dict(mykeys .=> myvalues)

# ARPAbet_dictionary = set_dictionary(cmu_dataset)


# now need to get IPA encodings for the words here
# then re-add the punctuation
