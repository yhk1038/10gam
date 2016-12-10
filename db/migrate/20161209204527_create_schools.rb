class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :kind
      t.string :region
      t.string :region2
      t.string :name
      t.string :addr
      t.timestamps null: false
    end
  end
end
