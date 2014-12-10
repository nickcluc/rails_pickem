class AddTeamToPicks < ActiveRecord::Migration
  def change
    add_column :picks, :team, :string
  end
end
