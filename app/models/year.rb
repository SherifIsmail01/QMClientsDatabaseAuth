class Year < ApplicationRecord
	belongs_to :client
	has_many :bank_statements, dependent: :destroy
	has_many :confirmations, dependent: :destroy
	has_many :portals, dependent: :destroy
	has_many :qb_reports, dependent: :destroy
	has_many :report_drafts, dependent: :destroy
	has_many :report_packages, dependent: :destroy
	has_many :schedules, dependent: :destroy
	has_many :bod_munites, dependent: :destroy
	has_many :apgs, dependent: :destroy
	has_many :testings, dependent: :destroy
	has_many :files_to_send_to_clients, dependent: :destroy
	has_many :permenants, dependent: :destroy
	has_many :other_files, dependent: :destroy
	has_many :taxes, dependent: :destroy

end
