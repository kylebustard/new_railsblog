class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :comment_entry
      t.references :blog_post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
