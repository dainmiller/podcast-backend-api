class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.string :for
      t.string :with

      t.timestamps
    end
  end
end
