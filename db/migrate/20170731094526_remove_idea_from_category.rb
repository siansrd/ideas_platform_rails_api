class RemoveIdeaFromCategory < ActiveRecord::Migration
  def change
    remove_column :categories, :idea_id
  end
end
