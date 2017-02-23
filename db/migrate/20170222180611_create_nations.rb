class CreateNations < ActiveRecord::Migration[5.0]
  def change
    create_table :nations do |t|
      t.string :name
      t.string :culture
      t.string :govt
      t.string :econ
      t.string :geo
      t.integer :user_id
    end
  end
end
