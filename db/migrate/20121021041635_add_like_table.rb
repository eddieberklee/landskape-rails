class AddLikeTable < ActiveRecord::Migration
  def up
    create_table 'likes' do |t|
      t.text    'user_id'
      t.text    'photo_id'
    end
  end

  def down
    drop_table 'likes'
  end
end
