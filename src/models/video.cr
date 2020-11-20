class Video < BaseModel
  table do
    column title : String

    has_many performances : Performance
    has_many actors : Actor, through: [:performances, :actor]
    has_many releases : Release
  end
end
