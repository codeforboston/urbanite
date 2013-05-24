require 'spec_helper'

describe Schedule do

  it { should have_fields(:start_time, :end_time).of_type(String) }

  it { should validate_presence_of :date }
  it { should validate_presence_of :start_time }

end