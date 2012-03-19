class CareersSubjects < ActiveRecord::Migration
  def change
    create_table :careers_subjects do |t|
      t.references :career
      t.references :subject
    end
  end
end
