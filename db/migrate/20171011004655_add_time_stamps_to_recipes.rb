class AddTimeStampsToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :created_at, :datetime
    add_column :recipes, :updated_at, :datetime
  end
end
