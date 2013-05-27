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

  validates :street_number, presence: true, numericality: true
  validates :street_name,   presence: true
  validates :postal_code,   presence: true
  validates :country,       presence: true
end


class Geolocation
  include Mongoid::Document

  field :lng, type: Float  # Longitude ; X-coordinate
  field :lat, type: Float  # Latitude  ; Y-coordinate

  validates :lng, presence: true
  validates :lat, presence: true

end