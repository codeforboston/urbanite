class Event
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name,        type: String
  field :description, type: String
  field :categories,  type: Array
  
  field :thumbnail_url, type: String
  field :status,        type: Boolean,  default: true

  # RELATION has_one :venue =>
  embeds_one :schedule

  # field :third_party, type: Array #Information regarding the event from a third_party 
  # field :organizations, type: Array #Array containing the organizations participating in the event
  
end

class Schedule
  include Mongoid::Document
  field :date, type: String
  field :start_time, type: String
  field :end_time,   type: String
  embedded_in :event

  validates :date, presence: true
  validates :start_time, presence: true

end