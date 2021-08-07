require 'json'
require_relative'card'

class Deck
  attr_reader :cards

  def self.build(card_path = 'lib/cards.json')
    file = File.open(card_path)
    data = JSON.load(file)
    cards = data['cards'].map { |card_data| Card.build(card_data) }
    new(cards)
  end

  def initialize(cards)
    @cards = cards
  end
end
