class CreateQuestions < ActiveRecord::Migration
  def change
#    drop_table :questions

    create_table :questions do |t|
      t.string :label
      t.string :question_type
      t.references :question_group

      t.timestamps
    end
    add_index :questions, :question_group_id
  end
end
