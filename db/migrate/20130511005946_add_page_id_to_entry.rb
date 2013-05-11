class AddPageIdToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :page_id, :integer
  end
end
