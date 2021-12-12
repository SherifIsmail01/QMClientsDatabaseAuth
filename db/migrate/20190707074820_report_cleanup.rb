class ReportCleanup < ActiveRecord::Migration[5.1]
  def change
  	change_table(:reports) do |t|
  		t.remove :bank_statements
  		t.remove :confirmations
  		t.remove :portal
  		t.remove :testing
  		t.remove :qb_reports
  		t.remove :report_drafts
  		t.remove :report_package
  		t.remove :bod_munites
  		t.remove :apg
  		t.remove :files_to_send_to_client
  		t.remove :permenant
  		t.remove :schedules
  		t.remove :other
  		t.remove :tax
  		t.string :name
  	end
  end
end
