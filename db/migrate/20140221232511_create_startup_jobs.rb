class CreateStartupJobs < ActiveRecord::Migration
  def change
    create_table :startup_jobs do |t|
      t.string :title
      t.string :description
      t.integer :salary_min
      t.integer :salary_max
      t.decimal :equity_min
      t.decimal :equity_max
      t.string :angellist_url
      t.references :startup, index: true

      t.timestamps
    end
  end
end
