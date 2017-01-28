class CreateWorksheets < ActiveRecord::Migration[5.0]
  def change
    create_table :worksheets do |t|
      t.string :action, null: false
      t.text :description
      t.references :user
      t.timestamps null: false
    end
  end
end
