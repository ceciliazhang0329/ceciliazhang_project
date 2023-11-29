class CreateMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :materials do |t|
      t.string :material_name
      t.string :description
      t.string :material_type

      t.timestamps
    end
  end
end
