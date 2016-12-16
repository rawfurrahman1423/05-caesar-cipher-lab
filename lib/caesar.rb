$alp_up = [*?A..?Z] #universal variables that are broken up into individula strings because of the  '$' sign. Looks for all upper case letter of string.
$alp_down = [*?a..?z] #universal variables that are broken up into individula strings because of the  '$' sign. Looks for all lower case letter of string.

def caesar_decode(string, offset) #makes method 'caeser_cipher' and two place holders
  string.split("").map do |character| # takes first place holder string and slpits it up into indivdual letters. Also makes another place hodler called character.
    if $alp_up.include? (character) 
      final_character = $alp_up [($alp_up.index(character)+offset) %26 ] #final variable that will become new shifted letterr. Takes upper case string and finds the number of letters and repeats shift for each one based on the number of the offset givin by user. 
    elsif $alp_down.include? (character)
      final_character = $alp_down [($alp_down.index(character)+offset) %26 ]#final variable that will become new shifted letterr. Takes lower case string and finds the number of letters and repeats shift for each one based on the number of the offset given by user. 
    else
      character
    end
  end.join("") #puts all of the newly shifted strings back together
  
end

puts caesar_decode("N'r f ynljw", 5) #will run through caeser_cipher method and left side is string and right side is offset number. Left will move each letter over to the right based on the number on the right side. 


