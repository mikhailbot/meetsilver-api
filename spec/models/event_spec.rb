require 'rails_helper'

RSpec.describe Event, :type => :model do
  subject(:event) { create(:event) }

  it 'has a unique slug' do
    new_event = create(:event)
    new_event.slug = event.slug
    expect(new_event.valid?).to eq(false)
  end
end
