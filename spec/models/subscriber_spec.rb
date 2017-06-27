require 'rails_helper'

RSpec.describe Subscriber, type: :model do
  it 'needs an email address' do
    expect(Subscriber.new(email: '')).to be_invalid
  end

  it 'needs an unique email address' do
    Subscriber.create(email: 'user@example.org')
    expect(Subscriber.new(email: 'user@example.org')).to be_invalid
  end
end
