ActiveRecord::Schema.define(version: 2022_01_31_180405) do

    create_table "movies", force: :cascade do |t|
      t.string "title"
      t.integer "year_released"
      t.string "rated"
      t.integer "person_id"
    end
  
    create_table "people", force: :cascade do |t|
      t.string "name"
    end

    create_table "roles", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "person_id"
    t.string "character_name"

      end
  
end