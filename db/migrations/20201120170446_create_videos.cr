class CreateVideos::V20201120170446 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Video) do
      primary_key id : Int64
      add_timestamps
      add title : String
    end
  end

  def rollback
    drop table_for(Video)
  end
end
