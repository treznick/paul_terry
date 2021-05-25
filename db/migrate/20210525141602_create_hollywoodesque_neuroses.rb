class CreateHollywoodesqueNeuroses < ActiveRecord::Migration[6.1]
  def change
    create_table :hollywoodesque_neuroses do |t|
      t.string :name
      t.belongs_to :child_actor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
