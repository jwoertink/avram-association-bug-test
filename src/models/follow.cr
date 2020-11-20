class Follow < BaseModel
  table do
    belongs_to follower : User, foreign_key: :follower_id
    belongs_to following : User, foreign_key: :following_id
  end
end
