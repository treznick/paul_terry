class CreateCruelAunts < ActiveRecord::Migration[6.1]
  def change
    create_table :cruel_aunts do |t|
      t.string :name
      t.belongs_to :traumatized_child, null: false, foreign_key: true

      t.timestamps
    end
  end
end
