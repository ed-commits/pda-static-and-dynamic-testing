require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../card")
require_relative("../card_game")

class TestCardGame < Minitest::Test
  def setup
    @game = CardGame.new()
    @ace_card = Card.new("hearts",1)
    @not_ace_card = Card.new("spades",5)
    @queen = Card.new("diamonds",11)
  end

  def test_check_for_ace_positive
    assert_equal(true, @game.check_for_ace(@ace_card))
  end

  def test_check_for_ace_negative
    assert_equal(false, @game.check_for_ace(@not_ace_card))
  end

  def test_highest_card
    result = @game.highest_card(@ace_card, @not_ace_card)
    assert_equal(@not_ace_card, result)
  end

  def test_cards_total_zero
    result = CardGame.cards_total([])
    assert_equal("You have a total of 0", result)
  end

  def test_cards_total_some
    result = CardGame.cards_total([@ace_card, @not_ace_card, @queen])
    assert_equal("You have a total of 17", result)
  end
end
