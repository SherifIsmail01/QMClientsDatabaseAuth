class CreatePortals < ActiveRecord::Migration[5.1]
  def change
    create_table :portals do |t|
      t.text :name
      t.belongs_to :report, foreign_key: true

      t.timestamps
    end
  end
end
