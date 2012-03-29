class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.text :comment
      t.references :scope
      t.references :user
      t.references :form
      t.timestamps
    end
  end
end
