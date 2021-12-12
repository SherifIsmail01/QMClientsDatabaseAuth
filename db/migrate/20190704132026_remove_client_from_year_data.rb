class RemoveClientFromYearData < ActiveRecord::Migration[5.1]
  def change
    remove_reference :year_data, :client, foreign_key: true
  end
end
