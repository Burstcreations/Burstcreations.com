class AddAvailableToAvailabilities < ActiveRecord::Migration
  def change
    add_column :availabilities, :available, :datetime
    remove_column :availabilities, :date
    remove_column :availabilities, :time
  end
end
