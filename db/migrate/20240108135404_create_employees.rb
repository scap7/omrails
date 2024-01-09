class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :personal_email
      t.integer :salary
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :pincode
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
