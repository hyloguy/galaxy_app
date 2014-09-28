class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :handle
      t.string :password
      t.string :email
      t.references :planet, index: true

      t.timestamps
    end
  end
end
