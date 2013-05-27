FactoryGirl.define do
  factory :event do
    sequence(:name) { |n| "Event #{n}" }
    sequence(:description) { |n| "description #{n}" }
    categories %w( CategoryOne CategoryTwo )
    schedule { FactoryGirl.build :schedule }
    status "open"
  end

  factory :schedule do
    sequence(:date) { |n| "Date #{n}" }
    sequence(:start_time) { |n| "Start time #{n}" }
    sequence(:end_time)   { |n| "End time #{n}" }
  end

  factory :venue do
    name "Backbar"
    description "The coolest bar you'll never be able to find."
    categories ["Venue Cat One", "Venue Cat Two"]
    organizations ["Journeyman", "Sam"]
    address { FactoryGirl.build :address }
    status "Open"
  end

  factory :address do
    sequence(:street_number) { |n| "#{n}#{n%3}#{n%7}"}
    sequence(:street_name)   { |n| "#{n}th Street"}
    sequence(:unit_number)   { |n| "#{n/3}"}
    sequence(:intersection)  { |n| ["North #{n}th St", "West #{n}nd St"] }
    locality       "locality"
    district       "district"
    territory      "Massachusettts"
    territory_code "MA"
    country        "United States"
    sequence(:postal_code)  { |n| "02#{n%2}3#{n%5}" }
    sequence(:section_name) { |n| "Wing #{n}" }
    sequence(:floor) { |n| "#{n%3}" }
    sequence(:room)  { |n| "#{n}#{n%(n+1)}#{n%3}" }
  end 

end