class AddClientReferenceToYearDatum < ActiveRecord::Migration[5.1]
  def change
    add_reference :year_data, :client, foreign_key: true
  end
end
