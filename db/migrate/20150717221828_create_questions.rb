class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :q_name, null: false
      t.integer :survey_id, null: false
      t.boolean :completed, default: false

      t.timestamps null: false
    end
  end
end
