class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end
