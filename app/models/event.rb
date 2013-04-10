class Event
  include Mongoid::Document
  field :event_name, type: String
end
