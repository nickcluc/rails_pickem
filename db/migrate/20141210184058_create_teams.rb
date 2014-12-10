class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name, null: false
      t.string :abbrev, null: false
      t.integer :wins, default: 0
      t.integer :losses, default: 0

      t.timestamps
    end
  end
end
