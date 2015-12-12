class CreateTakenSurveys < ActiveRecord::Migration
  def change
    create_table :taken_surveys do |t|
      t.timestamps null: false
      t.belongs_to :user, null: false
      t.belongs_to :survey, null: false

      t.timestamps null: false
    end
  end
end
