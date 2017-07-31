class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :description
      t.text :summary
      t.references :user, index: true, foreign_key: true
      t.integer :votes
      t.integer :views

      t.timestamps null: false
    end
  end
end
