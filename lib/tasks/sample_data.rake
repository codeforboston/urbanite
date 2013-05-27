
categories = %w(Concert Gathering Picnic Dance Gallery Premiere)
acts =  ["You Won't", "Fleet Foxes", "'Photograph' (dir. M. Baxter)",
         "Lake Street Dive", "Lauren Metter", "Gatsby (dir. Baz Luhrmann)",
         "Donkey Show", "Sam Adams", "Health Care for the Homeless"]
organizations = ["Bowery Boston", "Brain Trust", "Dig", "S&S Holdings"]
dates = ["Apr 3", "May the Twenty-Fourth", "May 26, 2013", "May 29, 2013"]
times = ["10:30 AM", "12:00 N", "2:30 PM", "5:00 PM", "6:00 PM",
         "8:00 PM", "8:30 PM", "9:00 PM", "9:30 PM", "10:00 PM", "10:30 PM"]


namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    address = Address.create!(street_number: 42,
                          street_name: "Walnut St.",
                          postal_code: "02138",
                          country: "USA")

    ven1 = Venue.create!(name: "Backbar",
        description: "The coolest bar you'll never be able to find.",
        categories: ["Venue Cat One", "Venue Cat Two"],
        organizations: ["Journeyman", "Sam"],
        address: address,
        status: "Open")

    ven2 = Venue.create!(name: "Johnny D's",
        description: "It's a restaurant and a bar with a stage!",
        categories: ["Venue Cat Three", "Venue Cat Four"],
        organizations: ["Jazz", "Restaurant"],
        address: address,
        status: "Open")

    venues = [ven1, ven2]

    10.times do |n|
      act   = acts.sample
      categories = categories.sample 2
      organizations = organizations.sample 2
      date = dates.sample
      start_time = times.sample
      end_time   = times[times.index(start_time) + 2] ; end_time ||= "12:00 PM"
      the_venues = venues.sample rand(1..2)

      description = "This week at #{the_venues.collect{|v| v.name}.join(', ')}, come see #{act} in a once-in-a-lifetime whirlwind performance. Doors at #{start_time}."

      schedule = Schedule.new(date: date, start_time: start_time, end_time: end_time)

      e = Event.create!(name: act,
                        description: description,
                        categories:  categories,
                        schedule:    schedule)
      e.venues << the_venues
    end
  end
end
