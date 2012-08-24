class CreateQuestions < ActiveRecord::Migration
  def change
    drop_table :questions

    create_table :questions do |t|
      t.string :label
      t.string :question_type
      t.references :questionGroup

      t.timestamps
    end
    add_index :questions, :questionGroup_id
  end
end
