class CreateChoices < ActiveRecord::Migration
  def change
    create_table  do |t|
      t.string :answer, null: false
      t.belongs_to :question

      t.timestamps null: false
    end
  end
end
