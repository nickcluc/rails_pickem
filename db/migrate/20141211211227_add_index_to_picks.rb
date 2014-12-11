class AddIndexToPicks < ActiveRecord::Migration
  def change
    add_index(:picks, [:game_id, :user_id], unique: true)
  end
end
