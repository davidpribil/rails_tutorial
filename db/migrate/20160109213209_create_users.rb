class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :age
      t.string :name

      t.timestamps
    end
  end
end
