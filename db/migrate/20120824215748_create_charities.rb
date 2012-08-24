class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :name
      t.string :description
      t.decimal :overall
      t.decimal :financial
      t.decimal :accountability

      t.timestamps
    end
  end
end
