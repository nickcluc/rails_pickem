class DropTeamsMembershipsLeagues < ActiveRecord::Migration
  def change
    drop_table :leagues
    drop_table :memberships
    drop_table :teams
  end
end
