class AddCommentTable < ActiveRecord::Migration
  def up
    create_table 'comments' do |t|
      t.integer    'user_id'
      t.integer    'photo_id'
      t.text       'comment_text'
    end
  end

  def down
    drop_table 'comments'
  end
end
