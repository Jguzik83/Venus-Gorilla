class CreateSurveyChoices < ActiveRecord::Migration
  def change
    create_table :survey_choices do |t|
      t.integer :question_id, null: false
      t.integer :choice_id, null: false
      t.integer :user_survey_id, null: false

      t.timestamps null: false
    end
  end
end
