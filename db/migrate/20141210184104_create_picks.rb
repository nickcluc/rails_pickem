class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.integer :game_id, null: false
      t.integer :user_id, null: false
      t.integer :team_id, null: false

      t.timestamps
    end
  end
end
