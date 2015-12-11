class CreateTakenSurveys < ActiveRecord::Migration
  def change
    create_table  do |t|
      t.belongs_to :user
      t.belongs_to :surveys

      t.timestamps null: false
    end
  end
end
