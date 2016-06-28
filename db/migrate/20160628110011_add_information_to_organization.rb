class AddInformationToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :short_name, :string
    add_column :organizations, :website_url, :string
    add_column :organizations, :facebook_url, :string
    add_column :organizations, :twitter_handle, :string
  end
end
