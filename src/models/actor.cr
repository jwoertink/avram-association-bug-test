class Actor < BaseModel
  table do
    column name : String

    has_many performances : Performance
    has_many videos : Video, through: [:performances, :video]
    has_many releases : Release, through: [:videos, :releases]
  end
end
