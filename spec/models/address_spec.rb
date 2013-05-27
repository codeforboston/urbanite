require 'spec_helper'

describe Address do

  it { should have_fields(:street_number, :unit_number, :floor).of_type(Integer) }
  it { should have_fields(:street_name, :locality, :district).of_type(String) }
  it { should have_fields(:territory, :territory_code).of_type(String) }
  it { should have_fields(:country, :postal_code).of_type(String) }
  it { should have_field(:intersection).of_type(Array) }

  it { should embed_one :geolocation }

  it { should validate_presence_of :street_number }
  it { should validate_numericality_of :street_number }

  it { should validate_presence_of :street_name }
  it { should validate_presence_of :postal_code }
  it { should validate_presence_of :country }

end