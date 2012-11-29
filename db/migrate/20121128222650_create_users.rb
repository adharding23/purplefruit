class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :id
      t.string :usertype
	  t.string :encrypted_password
	  t.string :salt
      t.timestamps
    end
  end
end
