class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.timestamps null: false
      t.belongs_to :question, null: false
      t.belongs_to :choice, null: false
    end
  end
end
