class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.integer :usr_id
      t.string :title
      t.date :date
      t.string :spot
      t.integer :price
      
      t.timestamps
    end
  end
end
