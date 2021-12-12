class CreateFilesToSendToClients < ActiveRecord::Migration[5.1]
  def change
    create_table :files_to_send_to_clients do |t|
      t.text :name
      t.belongs_to :report, foreign_key: true

      t.timestamps
    end
  end
end
