require 'spec_helper'

describe Venue do
  
  it { should have_fields(:name, :description, :status).of_type(String) }
  it { should have_fields(:categories, :organizations).of_type(Array) }

  it { should embed_one :address }
  # TODO: test for recursive embed  

  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_length_of(:description).within(2..2000) }
  it { should validate_presence_of :categories }
  it { should validate_presence_of :organizations }
  it { should validate_presence_of :status }
end