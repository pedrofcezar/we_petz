ActiveRecord::Schema.define(version: 2018_11_08_164550) do

  create_table "articles", force: :cascade do |t|
    t.string "author"
    t.string "email"
    t.string "title"
    t.text "content"
    t.boolean "dog_key"
    t.boolean "cat_key"
    t.boolean "product_key"
    t.boolean "pet_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "stars"
    t.text "review_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "article_id"
    t.string "name"
    t.string "email"
    t.index ["article_id"], name: "index_reviews_on_article_id"
  end

end
