class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username,email,first_name,last_name

      t.timestamps
    end
  end
end
