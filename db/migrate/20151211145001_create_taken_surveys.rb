class CreateTakenSurveys < ActiveRecord::Migration
  def change
    create_table  do |t|
      t.timestamps null: false
      t.belongs_to :user
      t.belongs_to :surveys
    end
  end
end
