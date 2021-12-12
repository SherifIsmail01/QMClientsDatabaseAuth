class CreateAuditors < ActiveRecord::Migration[5.1]
  def change
    create_table :auditors do |t|
      t.text :name

      t.timestamps
    end
  end
end
