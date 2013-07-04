class Event
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name,        type: String
  field :description, type: String
  field :categories,  type: Array
  field :urls,        type: Array
  field :organizations,   type: Array
  field :thumbnail_url,   type: String
  field :status,          type: Boolean,  default: true
  field :public,          type: Boolean,  default: true
  
  has_many :venues,  validate: false
  
  recursively_embeds_many
  embeds_one :schedule
  
  embeds_many :third_parties
  accepts_nested_attributes_for :third_parties

  validates :name,        presence: true
  validates :description, presence: true
  validates :categories,  presence: true
  validates :schedule,    presence: true
  validates :status,      presence: true
  validates :public,      presence: true
end



class Schedule
  include Mongoid::Document
  field :start_date,       type: String
  field :start_time, type: String
  field :end_time,   type: String

  embedded_in :event

  validates :start_date, presence: true
  validates :start_time, presence: true
end



class ThirdParty
  include Mongoid::Document
end