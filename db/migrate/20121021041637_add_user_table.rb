class AddUserTable < ActiveRecord::Migration
  def up
    create_table 'users' do |t|
      t.text    'username'
      t.text    'city'
      t.text    'state'
      t.text    'bio'
      t.text    'password_hash'
      t.text    'password_salt'
    end
  end

  def down
    drop_table 'users'
  end
end
