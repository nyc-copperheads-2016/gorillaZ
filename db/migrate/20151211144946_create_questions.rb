class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :description
      t.belongs_to :survey, null: false

      t.timestamps null: false
    end
  end
end
