class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.boolean :like
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :comment, index: true, foreign_key: true
      t.belongs_to :playlist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
