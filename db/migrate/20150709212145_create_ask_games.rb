class CreateAskGames < ActiveRecord::Migration
  def change
    create_table :ask_games do |t|
      t.integer  :user_id
      t.text     :content

      t.timestamps null: false
    end
  end
end
