class CreateScopes < ActiveRecord::Migration
  def change
    create_table :scopes do |t|
      t.references :career
      t.references :subject
      t.references :teacher
      t.timestamps
    end
  end
end
