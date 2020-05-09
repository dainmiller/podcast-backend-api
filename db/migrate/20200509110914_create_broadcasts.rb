class CreateBroadcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :broadcasts do |t|
      t.string :with
      t.string :from

      t.timestamps
    end
  end
end
