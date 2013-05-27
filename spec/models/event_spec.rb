require 'spec_helper'

describe Event do

  # Construction

  it { should have_field :_id }  
  it { should have_fields(:name, :description).of_type(String) }
  it { should have_field(:categories).of_type(Array) }

  it { should embed_one :schedule }
  it { should have_many :venues }
  # it { should recursively_embed_many }

  it { should have_field(:urls).of_type(Array) }
  
  it { should embed_many :third_parties }
  it { should accept_nested_attributes_for :third_parties }

  it { should have_field(:organizations).of_type(Array) }
  it { should have_field(:thumbnail_url).of_type(String) }
  it { should have_field(:status).of_type(Boolean) }
  it { should have_field(:public).of_type(Boolean) }

  it { should have_field(:created_at, :updated_at).of_type(Time) }

  # Validations

  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :categories }
  it { should validate_presence_of :schedule }
  it { should validate_presence_of :status }
  it { should validate_presence_of :public }

  it { should_not validate_associated :venues }

end