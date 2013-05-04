categories = %w(Concert Gathering Picnic Dance Gallery Premiere)
acts =  ["You Won't", "Fleet Foxes", "'Photograph' (dir. M. Baxter)",
         "Lake Street Dive", "Lauren Metter", "Gatsby (dir. Baz Luhrmann)",
         "Donkey Show", "Sam Adams", "Health Care for the Homeless"]
venues = ["Passim", "Middle East Downstairs", "Middle East Upstairs", 
          "Cambridge Common", "Brattle Theater", "Food Project Greenhouse",
          "Roxbury Crossing", "Oberon", "Haley House"]
times = ["10:30 AM", "12:00 N", "2:30 PM", "5:00 PM", "6:00 PM",
         "8:00 PM", "8:30 PM", "9:00 PM", "9:30 PM", "10:00 PM", "10:30 PM"]


namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Event.create!(event_name: "")
    
    40.times do |n|
      act = acts.sample ; venue = venues.sample
      event_name = "#{act} at #{venue}"
      event_categories = categories.sample 2

      start_time = times.sample
      end_time   = times[times.index(start_time) + 2] ; end_time ||= "12:00 PM"

      event_description = "This week at #{venue}, come see #{act} in a
      once-in-a-lifetime whirlwind performance. Doors at #{start_time}."

      schedule = Schedule.new(start_time: start_time, end_time: end_time)
      Event.create!(event_name: event_name,
                    event_description:  event_description,
                    event_categories: event_categories,
                    schedule: schedule)
    end
  end
end