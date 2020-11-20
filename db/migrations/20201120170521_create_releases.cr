class CreateReleases::V20201120170521 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Release) do
      primary_key id : Int64
      add_timestamps
      add released_at : Time
      add_belongs_to video : Video, on_delete: :cascade
    end
  end

  def rollback
    drop table_for(Release)
  end
end
