class AddsContactInfoToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :contact_first_name, :string, null: false
    add_column :organizations, :contact_last_name, :string, null: false
    add_column :organizations, :contact_email, :string, null: false
    add_column :organizations, :description, :text, null: false
  end
end
