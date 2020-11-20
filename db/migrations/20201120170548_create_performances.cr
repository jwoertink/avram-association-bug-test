class CreatePerformances::V20201120170548 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Performance) do
      primary_key id : Int64
      add_timestamps
      add_belongs_to actor : Actor, on_delete: :cascade
      add_belongs_to video : Video, on_delete: :cascade
    end
  end

  def rollback
    drop table_for(Performance)
  end
end
