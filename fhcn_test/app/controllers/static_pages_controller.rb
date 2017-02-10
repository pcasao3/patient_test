class StaticPagesController < ApplicationController

	# Landing page for fhcn
	def fhcn_test
		@patient = FhcnPatient.search(params[:search])
	end
end
