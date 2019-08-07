class SorceryCore < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :crypted_password
      t.string :salt
      t.datetime :deleted_at

      t.timestamps null: false
    end

    create_table :news do |t|
      t.string :title
      t.string :body
      t.datetime :deleted_at

      t.timestamps null: false 
    end

    add_index :users, :name, unique: true
    add_index :users, :deleted_at
    add_index :news, :deleted_at
  end
end
