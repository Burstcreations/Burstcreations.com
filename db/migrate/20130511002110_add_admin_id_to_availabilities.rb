class AddAdminIdToAvailabilities < ActiveRecord::Migration
  def change
    add_column :availabilities, :admin_id, :integer
  end
end
