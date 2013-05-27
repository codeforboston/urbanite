# Add Mongoid RSpec matchers to RSpec, provided by the mongoid-rspec gem

RSpec.configure do |configuration|
  configuration.include Mongoid::Matchers
end