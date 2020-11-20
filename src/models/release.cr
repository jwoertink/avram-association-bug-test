class Release < BaseModel
  table do
    column released_at : Time
    belongs_to video : Video
    has_many performances : Performance, through: [:video, :performances]
  end

  def title
    video!.title
  end
end
