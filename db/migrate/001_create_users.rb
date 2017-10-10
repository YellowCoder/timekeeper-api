class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :timezone, null: false, default: 'America/Sao_Paulo'
      t.string :jwt_token

      t.timestamps null: false
    end
  end
end