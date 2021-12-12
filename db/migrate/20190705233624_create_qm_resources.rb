class CreateQmResources < ActiveRecord::Migration[5.1]
  def change
    create_table :qm_resources do |t|
      t.text :templates
      t.text :training
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
