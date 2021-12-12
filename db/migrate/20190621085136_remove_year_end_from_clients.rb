class RemoveYearEndFromClients < ActiveRecord::Migration[5.1]
  def change
    remove_column :clients, :year_end, :integer
  end
end
