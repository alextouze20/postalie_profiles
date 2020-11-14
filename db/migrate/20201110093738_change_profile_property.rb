class ChangeProfileProperty < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :dob, :date
    add_column :profiles, :address_zip, :text
    change_column :profiles, :address_street1, :string
    change_column :profiles, :address_street2, :string
    change_column :profiles, :address_city, :string
    change_column :profiles, :link, :string
    change_column :profiles, :address_country, :string
  end
end
