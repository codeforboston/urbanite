require 'spec_helper'

describe Event do
  
  it { should have_fields(:name, :description).of_type(String) }
  it { should have_field(:categories).of_type(Array) }
  it { should have_field(:thumbnail_url).of_type(String) }
  it { should have_field(:status).of_type(Boolean) }

  it { should embed_one :schedule }


end