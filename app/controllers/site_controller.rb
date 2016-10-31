class SiteController < ApplicationController
	def index 
		@companies = Company.first(3)
		@companiess = Company.all
	end
end
