class UpdateTasks < ActiveRecord::Migration
  def up
    add_column :tasks, :done, :boolean
    add_column :tasks, :description, :text
    add_column :tasks, :order, :integer
    remove_column :tasks, :complete
    remove_column :tasks, :points

  end

  def down
  end
end
