class FhcnPatient < ApplicationRecord
	def self.search(search)
		if search
			where(id: "#{search}")
	  	end
	end
end