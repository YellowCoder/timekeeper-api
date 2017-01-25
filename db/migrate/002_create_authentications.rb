class CreateAuthentications < ActiveRecord::Migration[5.0]
  def change
    create_table :authentications do |t|
      t.string :uid
      t.string :provider
      t.references :user
      t.timestamp
    end
  end
end
