class CreateQuestionGroups < ActiveRecord::Migration
  
  def change
#    drop_table :question_groups
    
    create_table :question_groups do |t|
      t.string :label
      t.string :group_type

      t.timestamps
    end
  end
end
