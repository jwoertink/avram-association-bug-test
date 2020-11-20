class User < BaseModel
  table do
    column name : String

    has_many following_links : Follow, foreign_key: :follower_id
    has_many follower_links : Follow, foreign_key: :following_id
    has_many followers : User, through: [:follower_links, :follower]
    has_many followings : User, through: [:following_links, :following]
  end
end
