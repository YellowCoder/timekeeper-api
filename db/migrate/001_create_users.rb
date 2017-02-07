class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :uuid, null: false
      t.string :provider, null: false
      t.timestamps null: false
    end
  end
end
