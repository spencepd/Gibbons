class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :email_address
      t.integer :answer_row
      t.integer :answer_column

      t.timestamps
    end
  end
end
