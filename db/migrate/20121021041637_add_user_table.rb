class AddUserTable < ActiveRecord::Migration
  def up
    create_table 'users' do |t|
      t.text    'username'
      t.text    'city'
      t.text    'state'
      t.text    'bio'
      t.float   'latitude'
      t.float   'longitude'
      t.text    'password_hash'
      t.text    'password_salt'
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end
  end

  def down
    drop_table 'users'
  end
end
