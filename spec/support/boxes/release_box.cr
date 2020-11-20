class ReleaseBox < Avram::Box

  def initialize
    released_at Time.utc
    video_id VideoBox.create.id
  end
end