class User < ActiveRecord::Base
  has_many :picks
  has_many :memberships
  has_many :leagues, through: :memberships

end
