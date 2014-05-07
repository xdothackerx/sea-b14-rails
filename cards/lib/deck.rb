require 'card'

class Deck
 attr_accessor :cards, :count

  def initialize
    @cards = []
    suits = [:H, :C, :D, :S]
    ranks = (1..13).to_a

    suits.product(ranks).each do |s, r|
      @cards << Card.new(s, r)
    end
  end

  def count
    @cards.length
  end
end
