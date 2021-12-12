class AddNumToYear < ActiveRecord::Migration[5.1]
  def change
    add_column :years, :num, :text
  end
end
