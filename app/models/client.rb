class Client < ApplicationRecord

	validates :name, length: {maximum: 100}, presence: true, uniqueness: true
	validates :status, length: {maximum: 100}, presence: true
	validates :year_end, length: {maximum: 10}

	belongs_to :auditor, optional: true

	has_many :years, dependent: :destroy
end
