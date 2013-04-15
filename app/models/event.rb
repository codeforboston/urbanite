class Event
  include Mongoid::Document
  #event id, mongo generates the id
  field :event_name, type: String
  field :event_description, type: String
  field :event_categories, type: Array
  embeds_one :schedule
  field :event_locations, type: Array
#  field :third_party, type: Array #Information regarding the event from a third_party 
#  field :organizations, type: Array #Array containing the organizations participating in the event
  field :thumbnail_url, type: String
  field :status, type: Boolean
  field :created_at, type: DateTime
end

class Schedule
	include Mongoid::Document
	field :start_time, type: String
	field :end_time, type: String
	embedded_in :event
end