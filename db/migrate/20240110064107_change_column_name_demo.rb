class ChangeColumnNameDemo < ActiveRecord::Migration[7.1]
  def change
    change_column :demos, :demo3, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
