class CareersTeachersSubjects < ActiveRecord::Migration
  def change
    create_table :careers_subjects_teachers do |t|
      t.references :career
      t.references :subject
      t.references :teacher
    end
  end
end
