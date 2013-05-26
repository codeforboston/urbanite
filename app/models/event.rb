class Event
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name,        type: String
  field :description, type: String
  field :categories,  type: Array
  field :urls,        type: Array
  
  embeds_one :schedule
  has_many :venues, validate: false
  recursively_embeds_many
  embeds_many :third_parties
  accepts_nested_attributes_for :third_parties

  field :organizations, type: Array
  field :thumbnail_url, type: String
  field :status,        type: Boolean,  default: true
  field :public,        type: Boolean,  default: true
  
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

class ThirdParty
  include Mongoid::Document
end