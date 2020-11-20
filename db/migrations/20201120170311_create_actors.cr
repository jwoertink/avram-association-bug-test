class CreateActors::V20201120170311 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Actor) do
      primary_key id : Int64
      add_timestamps
      add name : String
    end
  end

  def rollback
    drop table_for(Actor)
  end
end
