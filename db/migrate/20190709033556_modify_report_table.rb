class ModifyReportTable < ActiveRecord::Migration[5.1]
  def change
  	remove_reference :reports, :year, foreign_key: true
  end
end
