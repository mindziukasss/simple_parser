class Email < ApplicationRecord

	validates_uniqueness_of :email
end