class GoodnessValidator < ActiveModel::Validator
    def validate(record)
    if record.name == "Evil"
      record.errors.add :name, " :This person is evil"
    end
  end
end
class Person < ApplicationRecord

	# validate do |person|
 #    errors.add :name, :too_plain, message: "is not cool enough"
 #  end


# before_save :set, if: :check_box?
#   def set
#     #byebug
#       self.name = email
#    end

	  before_create MarkDeleted


	after_create_commit:check_level

	validates :name, presence: true, length: { minimum: 3 }
	
	# validates :name, presence: true, uniqueness: true, exclusion: { in: %w(www us ca jp), message: "%{value} is reserved." }, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, length: { maximum: 20 ,too_long: "%{count} characters is the maximum allowed"}

 # 	validates :description,inclusion: { in: %w(Intern , developer),message: "%{value} is not a valid size" }
 
 # 	validates :description,length: { maximum: 2 ,too_long: "%{count} characters is the maximum allowed"}, allow_nil:true

	# validates :check_box, acceptance: { message: 'must be abided' }

	 validates :email, confirmation: true

	 validates :email_confirmation, presence: true,  confirmation: { case_sensitive: false }

	# validates :level, presence: true, numericality: { only_integer: true}

	# validates :description, presence: true, if: :validation_check?

	# validate :check_level

	def check_level
		level = 0
		if level > 2
			errors.add(:level,"4 to 8 level not allowed")
		end
	end

	# def validation_check?
 #    	level == 2
 #  	end

	# validates_with GoodnessValidator, fields: [:name]

	# validates_each :name, :description do |record, attr, value|
 #    record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
 #    end

 # 	#validates :password, confirmation: true
  
 #    #validates :password_c, confirmation: true, unless: -> { password.blank? }

 #      validates :password, confirmation: true, if: Proc.new { |a| a.password.blank? }

end
