class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.string :credit_hours
      t.belongs_to :person, foreign_key: true

      t.timestamps
    end
  end
end
