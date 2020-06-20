### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card) # ERROR: Use of camel case instead of conventional snake case
    if card.value = 1 # ERROR: Using = instead of == will assign rather than test equality
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # ERROR: dif instead of def. no comma between parameters
  if card1.value > card2.value # ERROR: Lack of indentation
    return card
  else
    return card2
  end
end
end # ERROR: Too many end's

def self.cards_total(cards) # ERROR: Bad indentation, because of the previous end
  total # ERROR: just using the variable, I think they forgot to assign a start value like 0 to it
  for card in cards
    total += card.value
    return "You have a total of" + total # ERROR: No space after "of" inside the string
      # ERROR: Return inside the loop rather than outside it
  end
end

# ERROR: need to end the class here
```
