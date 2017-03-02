class Word < ActiveRecord::Base
  # Remember to create a migration!
   # def self.canonical(word)
   # words = word.split("").sort.join
   #  Word.all_anagrams(words)
   # end
   #paso5
   def self.canonica(word)
     word.split("").sort.join
   end
   #paso4
   def self.all_anagrams(user_word)
     #new_array = []
     #active record code
     word_canonical = self.canonica(user_word)
     #paso6
     word = Word.where(canonical_word: word_canonical)
   end
end


