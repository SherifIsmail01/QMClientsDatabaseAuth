class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.text :bank_statements
      t.text :confirmations
      t.text :portal
      t.text :testing
      t.text :qb_reports
      t.text :report_drafts
      t.text :report_package
      t.text :files_to_send_to_client
      t.text :bod_munites
      t.text :apg
      t.text :permenant
      t.text :schedules
      t.text :other
      t.text :tax
      t.belongs_to :year, foreign_key: true

      t.timestamps
    end
  end
end
