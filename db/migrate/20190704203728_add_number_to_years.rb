class AddNumberToYears < ActiveRecord::Migration[5.1]
  def change
    add_column :years, :number, :string
  end
end
