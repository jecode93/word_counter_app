text = "A man feeding a goat and a donkey. Now the goat becomes envious of the donkey, because he was too well fed. And she said to him: \"Between the millstone to turn and the burdens to carry, your life is an endless torment, \" and she advised him to simulate epilepsy, and to let himself fall into a hole to have rest . He followed the advice, dropped down and rubbed his whole body. His master having called the veterinarian, asked him for a remedy for the injured man. The veterinarian prescribed him to infuse the lung..."

frequence = {}
mots = text.tr('.,":\'', '').downcase.split(' ')

mots.each do |mot|
  if frequence[mot]
    frequence[mot] += 1
  else
    frequence[mot] = 1
  end
end

frequence = frequence.sort_by { |word, count| count}
frequence.reverse!
first = frequence.first

frequence.each do |mot|
   puts "The word \"#{mot[0]}\" appears #{mot[1]} times" 
end

puts " "
puts "And the word that appears most often is the word: \"#{first[0]}\" which appears #{first[1]} times."
