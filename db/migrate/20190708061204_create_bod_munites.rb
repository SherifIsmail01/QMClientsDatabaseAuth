class CreateBodMunites < ActiveRecord::Migration[5.1]
  def change
    create_table :bod_munites do |t|
      t.text :name
      t.belongs_to :report, foreign_key: true

      t.timestamps
    end
  end
end
