class AddDetailsToPlanets < ActiveRecord::Migration
  def change
    add_column :planets, :orbit, :integer
    add_reference :planets, :star_system, index: true
  end
end
