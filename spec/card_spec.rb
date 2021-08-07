require 'spec_helper'
require 'card'

RSpec.describe Card do
  it 'has a name' do
    card = Card.build(card_data({'name' => 'foo'}))
    expect(card.name).to eq 'foo'
  end

  it 'has stats' do
    card = Card.build(card_data({
      'stats' => {
        'strength' => 1,
        'speed' => 2,
        'intellect' => 3,
        'endurance' => 4,
        'cunning' => 5
      }
    }))
    expect(card.strength).to eq 1
    expect(card.speed).to eq 2
    expect(card.intellect).to eq 3
    expect(card.endurance).to eq 4
    expect(card.cunning).to eq 5
  end

  it 'has a description' do
    card = Card.build(card_data({'description' => 'bar'}))
    expect(card.description).to eq 'bar'
  end

  def card_data(overrides = {})
    {
      'name' => 'Test Card',
      'stats' => {
        'strength' => 1,
        'speed' => 1,
        'intellect' => 1,
        'endurance' => 1,
        'cunning' => 1
      },
      'description' => 'Test'
    }.merge(overrides)
  end
end
