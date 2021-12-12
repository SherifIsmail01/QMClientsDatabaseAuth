class AddYearReferenceToYearDatum < ActiveRecord::Migration[5.1]
  def change
    add_reference :year_data, :year, foreign_key: true
  end
end
