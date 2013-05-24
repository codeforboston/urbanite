require 'spec_helper'

describe Geolocation do

  it { should have_fields(:lng, :lat).of_type(Float) }

  it { should validate_presence_of :lng }
  it { should validate_presence_of :lat }
end