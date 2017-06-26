require 'rails_helper'

RSpec.describe FoundItem, type: :model do
  it 'has a name' do
    expect(FoundItem.new(name: '')).not_to be_valid
  end

  it 'has a unique name' do
    FoundItem.create(name: 'Tetra-Pack-Portemonnaie')
    expect(FoundItem.new(name: 'Tetra-Pack-Portemonnaie')).to_not be_valid
  end
end
