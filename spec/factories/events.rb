FactoryGirl.define do
  factory :event do
    title Faker::StarWars.quote
    location Faker::StarWars.planet
    
    after(:build) do |event|
      event.options << build_list(:option, 2)
    end
  end
end
