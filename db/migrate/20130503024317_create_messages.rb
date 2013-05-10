class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.string :website
      t.text :message
      t.boolean :schedule_consultation
      t.timestamp :date_sent
      t.datetime :prefered_consultation_time

      t.timestamps
    end
  end
end
