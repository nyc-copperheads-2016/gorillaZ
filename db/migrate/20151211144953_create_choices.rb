class CreateChoices < ActiveRecord::Migration
  def change
    create_table  do |t|
      t.string :answer, null: false
      t.timestamps null: false
      t.belongs_to :question
    end
  end
end
