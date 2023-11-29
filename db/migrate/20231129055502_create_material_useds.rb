class CreateMaterialUseds < ActiveRecord::Migration[7.0]
  def change
    create_table :material_useds do |t|
      t.integer :idea_id
      t.integer :material_id

      t.timestamps
    end
  end
end
