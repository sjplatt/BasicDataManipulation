class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :tText
      t.time :tTime
      t.references :keyword, index: true

      t.timestamps null: false
    end
    add_foreign_key :tweets, :keywords
  end
end
