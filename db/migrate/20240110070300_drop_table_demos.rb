class DropTableDemos < ActiveRecord::Migration[7.1]
  def change
    drop_table :demos
  end
end
