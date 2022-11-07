class MarkDeleted < ApplicationRecord
	def self.before_create(model)
		# byebug
	    model.email = model.level 
	    false
	end	
end
