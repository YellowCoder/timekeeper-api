class CreateWorksheets < ActiveRecord::Migration[5.0]
  def change
    create_table :worksheets do |t|
      t.references :category, index: true, null: false
      t.references :user, index: true, null: false
      t.integer :action, null: false, default: 0
      t.text :description

      t.timestamps null: false
    end
  end
end
