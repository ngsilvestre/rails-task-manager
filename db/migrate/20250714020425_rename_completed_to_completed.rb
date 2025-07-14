class RenameCompletedToCompleted < ActiveRecord::Migration[7.1]
  def change
     rename_column :todos, :copleted, :completed
  end
end
