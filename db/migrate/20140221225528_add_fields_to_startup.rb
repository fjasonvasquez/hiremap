class AddFieldsToStartup < ActiveRecord::Migration
  def change
    add_column :startups, :name, :string
    add_column :startups, :angellist_url, :string
    add_column :startups, :quality, :integer
    add_column :startups, :product_desc, :text
    add_column :startups, :company_url, :string
    add_column :startups, :logo_url, :string
  end
end
