class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :name, null: false
      t.integer :created_by, null: false

      t.timestamps
    end
  end
end
