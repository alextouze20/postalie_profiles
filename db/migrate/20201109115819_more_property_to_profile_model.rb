class MorePropertyToProfileModel < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :bio, :text
    add_column :profiles, :fullname, :text
    add_column :profiles, :address_street1, :text
    add_column :profiles, :address_street2, :text
    add_column :profiles, :address_city, :integer
    add_column :profiles, :address_province, :text
    add_column :profiles, :address_country, :text
    add_column :profiles, :link, :text
    add_column :profiles, :address_code, :text
  end
end
