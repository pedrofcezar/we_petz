class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :stars
      t.text :review_content

      t.timestamps
    end
  end
end
