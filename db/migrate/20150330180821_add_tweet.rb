class AddTweet < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :text

      t.timestamp
    end

  end
end
