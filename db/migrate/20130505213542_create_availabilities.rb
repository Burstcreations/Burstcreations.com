class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.date :date
      t.time :time
      t.boolean :enabled

      t.timestamps
    end
  end
end
