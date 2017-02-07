class Email < ApplicationRecord
  
	validates_uniqueness_of :email
  paginates_per 3

  def self.search(search)
    where("email LIKE ?", "%#{search}%") 
  end

end
