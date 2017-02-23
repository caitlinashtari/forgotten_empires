class CreateStats < ActiveRecord::Migration[5.0]
  def change
    create_table :statistics do |t|
      t.integer :capital
      t.string :resources
      t.integer :population
      t.integer :stability
      t.integer :nation_id
    end
  end
end
