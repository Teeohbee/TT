# frozen_string_literal: true

# Card represents a single card used in the game and includes name, description
# and stats
class Card
  attr_reader :name, :strength, :speed, :intellect, :endurance, :cunning,
              :description

  def self.build(card_data)
    stats = card_data['stats']
    new(
      card_data['name'],
      stats['strength'],
      stats['speed'],
      stats['intellect'],
      stats['endurance'],
      stats['cunning'],
      card_data['description']
    )
  end

  def initialize(name, strength, speed, intellect, endurance, cunning, description) # rubocop:disable Metrics/ParameterLists
    @name = name
    @strength = strength
    @speed = speed
    @intellect = intellect
    @endurance = endurance
    @cunning = cunning
    @description = description
  end
end
