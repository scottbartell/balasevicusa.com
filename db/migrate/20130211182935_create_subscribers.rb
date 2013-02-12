class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :email
      t.string :zip_code
      t.string :travel

      t.timestamps
    end
  end
end
