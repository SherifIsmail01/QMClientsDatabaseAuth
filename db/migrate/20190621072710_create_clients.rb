class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.text :name
      t.integer :year_end
      t.text :status

      t.timestamps
    end
  end
end
