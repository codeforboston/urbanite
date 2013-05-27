require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before do
      visit '/'
    end

    it "should have the content 'Urbanite'" do
      expect(page).to have_content('Urbanite')
      ven1, ven2 = FactoryGirl.create :venue
      evt1 = FactoryGirl.create(:event, name: "Bob Bear")
      evt2 = FactoryGirl.create(:event, name: "STRFKR")
      evt1.venues = [ven1, ven2]
      evt2.venues = [ven1]
    end

    it "should list each event" do
      Event.all.each do |event|
        expect(page).to have_selector( 'div', text: event.name )
        expect(page).to have_selector( 'div', text: event.description )
      end
    end
  end

end