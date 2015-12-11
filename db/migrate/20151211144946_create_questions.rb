class CreateQuestions < ActiveRecord::Migration
  def change
    create_table  do |t|
      t.string :description
      t.timestamps null: false
      t.belongs_to :survey, null: false
    end
  end
end
