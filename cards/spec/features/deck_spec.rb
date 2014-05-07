require 'minitest/autorun'
require 'deck'

describe "deck of cards" do
  it "should have 52 cards" do
    deck = Deck.new
    assert_equal 52, deck.count
  end
end
