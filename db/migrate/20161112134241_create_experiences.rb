class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :school
      t.string :degree
      t.string :major
      t.string :minor
      t.date :start_date
      t.date :end_date
      t.belongs_to :person, foreign_key: true

      t.timestamps
    end
  end
end
