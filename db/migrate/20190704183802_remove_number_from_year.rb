class RemoveNumberFromYear < ActiveRecord::Migration[5.1]
  def change
    remove_column :years, :number, :integer
  end
end
