class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :author
      t.string :email
      t.string :title
      t.text :content
      t.boolean :dog_key
      t.boolean :cat_key
      t.boolean :product_key
      t.boolean :pet_key

      t.timestamps
    end
  end
end
