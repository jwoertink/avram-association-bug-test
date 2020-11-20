class Performance < BaseModel
  table do
    belongs_to actor : Actor
    belongs_to video : Video
  end
end
