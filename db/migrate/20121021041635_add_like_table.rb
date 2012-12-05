class AddLikeTable < ActiveRecord::Migration
  def up
    create_table 'likes' do |t|
      t.text    'user_id'
      t.text    'photo_id'
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end
  end

  def down
    drop_table 'likes'
  end
end
