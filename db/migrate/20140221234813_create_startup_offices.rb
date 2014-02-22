class CreateStartupOffices < ActiveRecord::Migration
  def change
    create_table :startup_offices do |t|
      t.string :address1
      t.string :address2
      t.string :zip_code
      t.string :city
      t.string :state_code
      t.string :country_code
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
