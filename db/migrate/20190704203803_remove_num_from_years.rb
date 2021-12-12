class RemoveNumFromYears < ActiveRecord::Migration[5.1]
  def change
    remove_column :years, :num, :text
  end
end
