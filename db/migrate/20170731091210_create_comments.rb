class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :idea, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :comment, index: true, foreign_key: true
      t.integer :votes

      t.timestamps null: false
    end
  end
end
