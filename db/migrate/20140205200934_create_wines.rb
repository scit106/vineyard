class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
    	t.string :name
    	t.integer :tasting_id
    	t.integer :snooth_id
    	t.string :year
    	t.string :winery
    	t.string :type
    	t.string :varietal
    	t.string :purchaser
    	t.float :price
    	t.timestamps
    end
  end
end
