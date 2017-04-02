class Contact < ApplicationRecord
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true
  
  belongs_to :user
  
  def full_name
    "#{last_name}, #{first_name}"
  end

  def japan_phone_number
    "+81 #{phone}"
  end

  def self.find_all_johns
    Contact.where(first_name: "John")
  end
end
