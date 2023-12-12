file = open("../data/exploring_the_wonders_of_nature.txt")
text_vector = readlines(file);
close(file)

println(sizeof(text_vector[1]))

# use DelimitedFiles.readdlm

