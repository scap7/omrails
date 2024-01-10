class CreateDemos < ActiveRecord::Migration[7.1]
  def change
    create_table :demos do |t|
      t.string :demo_column_1
      t.string :demo_column_2

      t.timestamps
    end
  end
end
