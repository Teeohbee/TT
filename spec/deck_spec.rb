require 'spec_helper'
require 'deck'

RSpec.describe Deck do
  describe 'build' do
    it 'returns a Deck containing Cards' do
      deck = Deck.build('spec/fixtures/test_cards.json')
      expect(deck).to be_instance_of(Deck)
      expect(deck.cards).not_to be_empty
      expect(deck.cards.first).to be_instance_of(Card)
    end
  end
end
