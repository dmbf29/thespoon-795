class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :rating
      # t.boolean :delivered, default: false

      t.timestamps
    end
  end
end

# Only thing you need to change is the default values!
