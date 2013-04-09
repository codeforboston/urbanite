class HomeController < ApplicationController
  def index
	@title = "Urbanite"
	@intro_mssg = "A Web App that allows users to access 'hidden' cultural gems in their local environment by leveraging social media streams from local venues and cultural organizations like bands, artists, authors, chefs, etc."
	@layout = ["./others.html"]
  end
end
