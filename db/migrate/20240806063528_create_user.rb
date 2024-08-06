class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.boolean :is_admin, null: false, default: false
      t.timestamps
    end
  end
end
