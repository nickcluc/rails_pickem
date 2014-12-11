class Pick < ActiveRecord::Base
  belongs_to :user
  validates :game_id, uniqueness: { scope: :user_id, message: "cannot pick the same game twice"}
end
