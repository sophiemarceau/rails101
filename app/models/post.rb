class Post < ApplicationRecord
  belongs_to:user
  belongs_to:group
  validates:content,presence:true
  scope :recent, ->{order("created_at DESC")}
  has_many :members,through: :group_relationships, source: :user
end
