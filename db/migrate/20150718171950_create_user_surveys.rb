class CreateUserSurveys < ActiveRecord::Migration
  def change
    create_table :user_surveys do |t|
      t.integer :user_id, null: false
      t.integer :survey_id, null: false
      t.boolean :completed, null: false, default: false

      t.timestamps null: false
    end
  end
end
