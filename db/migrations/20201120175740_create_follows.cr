class CreateFollows::V20201120175740 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Follow) do
      primary_key id : Int64
      add_timestamps
      add_belongs_to follower : User, on_delete: :do_nothing
      add_belongs_to following : User, on_delete: :do_nothing
    end
  end

  def rollback
    drop table_for(Follow)
  end
end
