class AddLikeTable < ActiveRecord::Migration
  def up
    create_table 'likes' do |t|
      t.integer    'user_id'
      t.integer    'photo_id'
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end
  end

  def down
    drop_table 'likes'
  end
end
