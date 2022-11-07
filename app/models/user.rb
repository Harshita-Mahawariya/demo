class User < ApplicationRecord

  # before_validation :ensure_login_has_a_value
  # before_validation :normalize_email, on: :create

  #validates :login, presence: true
  #validates :email, presence: true

  #after_validation :set_location, on: :create
  # private
  #   def ensure_login_has_a_value
  #     if !(login.present?)
  #       self.login = email unless email.blank?
  #     end
  #   end

  # before_create do
  #   self.email = login.capitalize if email.blank?
  # end
  #callback
   before_create MarkDeleted

    after_initialize do |user|
      puts "You have initialized an object!"
    end

    after_find do |user|
    puts "You have found an object!"
  end

  after_touch do |user|
    puts "You have touched an object"
  end

def card
  if email.present?
    return 0
  else
    return 1
  end
end

before_save :number, if: :card , unless: :num

def number
  self.email=login
end
def num
  if login.length == 3
    return true
  end
end

  # private
    # def normalize_email
    #   self.email = email.downcase
    # end

    # def set_location
    #   self.login = login + " " + email
    # end

end
