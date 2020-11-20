class PerformanceBox < Avram::Box

  def initialize
    video_id VideoBox.create.id
    actor_id ActorBox.create.id
  end
end