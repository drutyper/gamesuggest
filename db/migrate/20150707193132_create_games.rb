class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string   :name
      t.text     :description
      t.integer  :score
      t.string   :thumbnail
      t.string   :url

      t.timestamps null: false
    end
  end
end
