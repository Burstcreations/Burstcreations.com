class AddAdminIdToPage < ActiveRecord::Migration
  def change
    add_column :pages, :admin_id, :integer
  end
end
