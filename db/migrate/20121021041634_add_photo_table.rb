class AddPhotoTable < ActiveRecord::Migration
  def up
    create_table 'photos' do |t|
      t.text    'user_id'
      t.text    'title'
      t.text    'city'
      t.text    'state'
      t.text    'description'
      t.text    'file_location'
      t.float   'latitude'
      t.float   'longitude'
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end
  end

  def down
    drop_table 'photos'
  end
end
