class CreateUnderReplies < ActiveRecord::Migration
  def change
    create_table :under_replies do |t|
      t.integer :reply_id
      t.integer :user_id
      t.string :content

      t.timestamps null: false
    end
  end
end
