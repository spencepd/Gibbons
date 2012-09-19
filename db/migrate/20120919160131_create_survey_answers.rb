class CreateSurveyAnswers < ActiveRecord::Migration
  def change
    create_table :survey_answers do |t|
      t.references :question_group
      t.references :question
      t.references :question_answer
      t.string :answer
      t.references :survey

      t.timestamps
    end
    add_index :survey_answers, :question_group_id
    add_index :survey_answers, :question_id
    add_index :survey_answers, :question_answer_id
    add_index :survey_answers, :survey_id
  end
end
