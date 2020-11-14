class ReviewPropertiesProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :firstname, :string
    add_column :profiles, :lastname, :string
    remove_column :users, :profile_id
    remove_column :profiles, :fullname
  end
end
