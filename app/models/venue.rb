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
  validates :description,   presence: true, length: { minimum: 2, maximum: 2000 }
  validates :categories,    presence: true
  validates :organizations, presence: true
  validates :status,        presence: true
end