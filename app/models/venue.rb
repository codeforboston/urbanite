class Venue
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name,          type: String
  field :description,   type: String
  field :categories,    type: Array
  field :organizations, type: Array
  field :status,        type: String  # TODO: what does status indicate?
  
  embeds_one :address
  recursively_embeds_one  # can embed a child venue
    # accessed via `venue.child_venue` or `venue.parent_venue`

  validates :name,          presence: true
  validates :description,   presence: true, length: { minimum: 2, maximum: 1000 }
  validates :categories,    presence: true
  validates :organizations, presence: true
  validates :status,        presence: true
end


class Address
  include Mongoid::Document

  field :street_number,  type: Integer
  field :street_name,    type: String
  field :unit_number,    type: Integer
  field :intersection,   type: Array   # of street names
  field :locality,       type: String
  field :district,       type: String
  field :territory,      type: String
  field :territory_code, type: String
  field :country,        type: String
  field :postal_code,    type: String

  field :section_name,   type: String
  field :floor,          type: Integer
  field :room,           type: String

  embeds_one :geolocation

  validates :street_number, numericality: true
  validates :street_name, presence: true
end


class Geolocation
  include Mongoid::Document

  field :lng, type: Float  # X-coordinate
  field :lat, type: Float  # Y-coordinate
end