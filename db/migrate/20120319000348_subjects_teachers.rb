class SubjectsTeachers < ActiveRecord::Migration
  def change
    create_table :subjects_teachers do |t|
      t.references :subject
      t.references :teacher
    end
  end
end
