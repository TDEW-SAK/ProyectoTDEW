class CreateEvaluationDetails < ActiveRecord::Migration
  def change
    create_table :evaluation_details do |t|
      t.decimal :grade
      t.references :evaluation
      t.references :item
      t.timestamps
    end
  end
end
