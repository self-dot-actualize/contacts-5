class Contact < ApplicationRecord
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
