require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before do
      visit '/'
    end

    it "should have the content 'Urbanite'" do
      expect(page).to have_content('Urbanite')
      Event.create!(name: "Free Chicken", description: "Oh look, a stupid magic show.")
      Event.create!(name: "Grand Opening of Banana Stand 2",
                    description: "A banana stand that *won't* kidnap and kill you!")
    end

    it "should list each event" do
      Event.all.each do |event|
        expect(page).to have_content event.name
        expect(page).to have_content event.description
        expect(page).to have_content event.venues.join(', ')
      end
    end
  end

end