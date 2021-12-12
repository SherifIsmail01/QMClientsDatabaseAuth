class AddAuditorReferenceToClients < ActiveRecord::Migration[5.1]
  def change
    add_reference :clients, :auditor, foreign_key: true
  end
end
