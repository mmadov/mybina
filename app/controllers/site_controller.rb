class SiteController < ApplicationController
	def index 
		@companies = Company.first(3)
		
	end
end
