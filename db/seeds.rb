# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 
require "csv"
def insert_words_to_db  
    #¡foreach' to open de file 'word.csv' for select each word
    CSV.foreach("words.csv") do |words|
      #word is an arrat, that why, i enter to index 0
      #split to divide a word
      #sort to ordenate every letter of the word
      #join to get together, so, this way we get a cannonical word
      word = words[0].split("").sort.join
      #To insert on database
      #'word' is the canonical word
      #'words' is the word on the dictionary
      Word.create(word: words[0], canonical_word: word)
      #=>[["word", "zymophore"], ["canonical_word", "ehmoopryz"]]
      #=>[["word", "Zyzzogeton"], ["canonical_word", "Zegnootyzz"]]

    end
end

insert_words_to_db  

