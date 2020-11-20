class FollowBox < Avram::Box

  def initialize
    follower_id UserBox.create.id
    following_id UserBox.create.id
  end
end