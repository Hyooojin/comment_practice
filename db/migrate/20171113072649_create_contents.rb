class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :content
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
