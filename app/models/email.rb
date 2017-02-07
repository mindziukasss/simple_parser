class Email < ApplicationRecord
  
	validates_uniqueness_of :email

  def self.search(search)
    where("email LIKE ?", "%#{search}%") 
  end

end
