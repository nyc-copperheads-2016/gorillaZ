class CreateAnswers < ActiveRecord::Migration
  def change
    create_table  do |t|
      t.timestamps null: false
      t.belongs_to :question, null: false
      t.belongs_to :choice_id, null: false
    end
  end
end
