class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :question, null: false
      t.belongs_to :choice, null: false
      t.belongs_to :taken_survey, null: false

      t.timestamps null: false
    end
  end
end
