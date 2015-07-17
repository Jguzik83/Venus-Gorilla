class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.integer :user_id, null: false
      t.boolean :completed, default: false

      t.timestamps null: false
    end
  end
end
