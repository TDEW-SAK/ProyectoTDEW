class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.text :comment
      t.references :career
      t.references :subject
      t.references :teacher
      t.references :form
      t.timestamps
    end
  end
end
