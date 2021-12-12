class AddYearendToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :year_end, :string
  end
end
