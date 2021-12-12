class AddClientToYears < ActiveRecord::Migration[5.1]
  def change
    add_reference :years, :client, foreign_key: true
  end
end
