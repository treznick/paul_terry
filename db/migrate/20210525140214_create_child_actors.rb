class CreateChildActors < ActiveRecord::Migration[6.1]
  def change
    create_table :child_actors do |t|
      t.string :name

      t.timestamps
    end
  end
end
