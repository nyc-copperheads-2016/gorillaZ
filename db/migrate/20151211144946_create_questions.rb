class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :description
      t.timestamps null: false
      t.belongs_to :survey, null: false
    end
  end
end
