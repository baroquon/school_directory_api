class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :role
      t.string :title
      t.string :avatar

      t.timestamps
    end
  end
end
