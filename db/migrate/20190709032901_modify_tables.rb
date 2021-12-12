class ModifyTables < ActiveRecord::Migration[5.1]
  def change
  	remove_reference :bank_statements, :report, foreign_key: true
	remove_reference :confirmations, :report, foreign_key: true
	remove_reference :portals, :report, foreign_key: true
	remove_reference :testings, :report, foreign_key: true
	remove_reference :qb_reports, :report, foreign_key: true
	remove_reference :report_drafts, :report, foreign_key: true
	remove_reference :report_packages, :report, foreign_key: true
	remove_reference :bod_munites, :report, foreign_key: true
	remove_reference :apgs, :report, foreign_key: true
	remove_reference :files_to_send_to_clients, :report, foreign_key: true
	remove_reference :permenants, :report, foreign_key: true
	remove_reference :schedules, :report, foreign_key: true
	remove_reference :other_files, :report, foreign_key: true
	remove_reference :taxes, :report, foreign_key: true
	add_reference :bank_statements, :year, foreign_key: true
	add_reference :confirmations, :year, foreign_key: true
	add_reference :portals, :year, foreign_key: true
	add_reference :testings, :year, foreign_key: true
	add_reference :qb_reports, :year, foreign_key: true
	add_reference :report_drafts, :year, foreign_key: true
	add_reference :report_packages, :year, foreign_key: true
	add_reference :bod_munites, :year, foreign_key: true
	add_reference :apgs, :year, foreign_key: true
	add_reference :files_to_send_to_clients, :year, foreign_key: true
	add_reference :permenants, :year, foreign_key: true
	add_reference :schedules, :year, foreign_key: true
	add_reference :other_files, :year, foreign_key: true
	add_reference :taxes, :year, foreign_key: true
  end
end
