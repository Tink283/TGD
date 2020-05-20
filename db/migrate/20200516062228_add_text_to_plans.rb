class AddTextToPlans < ActiveRecord::Migration[6.0]
  def change
    add_column :plans, :text, :string
  end
end
