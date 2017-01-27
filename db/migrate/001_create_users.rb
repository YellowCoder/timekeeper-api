class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :avatar_source
      t.string :sso_token, null: false
      t.string :sso_provider, null: false
      t.timestamps null: false
    end
  end
end