class RemoveYearReferenceFromYearData < ActiveRecord::Migration[5.1]
  def change
    remove_reference :year_data, :year, foreign_key: true
  end
end
