class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :occupation
      t.string :quote
      t.string :photo_url
      t.string :password_digest
      t.string :password_confirmation

      t.timestamps
    end
  end
end
