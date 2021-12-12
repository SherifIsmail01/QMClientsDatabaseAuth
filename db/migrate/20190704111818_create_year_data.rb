class CreateYearData < ActiveRecord::Migration[5.1]
  def change
    create_table :year_data do |t|
      t.string :Bank_Statements
      t.string :Confirmations
      t.string :Portal
      t.string :Testing
      t.string :QB_Reports
      t.string :Report_draft
      t.string :Report_package
      t.string :Files_to_send_to_client
      t.string :BOD_munites
      t.string :APG
      t.string :Schedules
      t.string :Permenant
      t.string :Other
      t.string :Tax

      t.timestamps
    end
  end
end
