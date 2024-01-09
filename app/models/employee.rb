class Employee < ApplicationRecord
  validates :first_name , :last_name , presence: true
  validates  :personal_email , presence:true, uniqueness:true
  validates  :salary, :city,:state,:pincode ,:country,:address_line_1 , presence:true
  def name
    "#{first_name} #{last_name}".strip
  end
  def address
    "#{address_line_1} , #{city} ,#{state} ".strip
  end
end
