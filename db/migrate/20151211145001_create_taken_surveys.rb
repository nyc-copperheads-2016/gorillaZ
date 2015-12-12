class CreateTakenSurveys < ActiveRecord::Migration
  def change
    create_table :taken_surveys do |t|
      t.timestamps null: false
      t.belongs_to :user
      t.belongs_to :surveys

      t.timestamps null: false
    end
  end
end
