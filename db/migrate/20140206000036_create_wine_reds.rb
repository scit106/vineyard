class CreateWineReds < ActiveRecord::Migration
  def change
    create_table :wine_reds do |t|

      t.timestamps
    end
  end
end
