class RemoveUserReferenceFromQmResources < ActiveRecord::Migration[5.1]
  def change
    remove_reference :qm_resources, :user, foreign_key: true
  end
end
