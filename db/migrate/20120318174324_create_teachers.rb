class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :names
      t.string :last_name
      t.string :second_last_name

      t.timestamps
    end
  end
end
