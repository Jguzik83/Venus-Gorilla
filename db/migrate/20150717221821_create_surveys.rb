class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.integer :owner_id, null: false

      t.timestamps null: false
    end
  end
end
