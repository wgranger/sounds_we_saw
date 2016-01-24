class CreateArticlesTable < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.references :user
      t.references :song
      t.timestamps
    end
  end
end
