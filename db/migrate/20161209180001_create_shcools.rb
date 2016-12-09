class CreateShcools < ActiveRecord::Migration
  def change
    create_table :shcools do |t|
      t.string :kind
      t.string :region
      t.string :region2
      t.string :name
      t.string :attr
      t.timestamps null: false
    end
  end
end
