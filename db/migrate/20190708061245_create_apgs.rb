class CreateApgs < ActiveRecord::Migration[5.1]
  def change
    create_table :apgs do |t|
      t.text :name
      t.belongs_to :report, foreign_key: true

      t.timestamps
    end
  end
end
