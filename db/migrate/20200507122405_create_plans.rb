class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.integer :usr_id
      t.string :title
      t.date :date
      t.string :spot
      t.integer :price
<<<<<<< HEAD
      t.text :text
=======
      
>>>>>>> 7639849bf0e38c9601ad951c4124e2b980fc33e7
      t.timestamps
    end
  end
end
