class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :choice1
      t.string :choice2
      t.string :choice3
      t.string :nattr
    end
  end
end
