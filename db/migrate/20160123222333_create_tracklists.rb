class CreateTracklists < ActiveRecord::Migration
  def change
    create_table :tracklists do |t|
      t.references :song
      t.references :playlist
      t.timestamps
    end
  end
end
