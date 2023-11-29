class CreateIdeas < ActiveRecord::Migration[7.0]
  def change
    create_table :ideas do |t|
      t.string :idea_name
      t.string :description
      t.string :idea_image
      t.boolean :post_status
      t.integer :likes_count

      t.timestamps
    end
  end
end
