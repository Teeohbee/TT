# frozen_string_literal: true

require 'json'
require_relative 'card'

# Deck represents a collection of cards to be used in the game
class Deck
  attr_reader :cards

  def self.build(card_path = 'lib/cards.json')
    file = File.read(card_path)
    data = JSON.parse(file)
    cards = data['cards'].map { |card_data| Card.build(card_data) }
    new(cards)
  end

  def initialize(cards)
    @cards = cards
  end
end
