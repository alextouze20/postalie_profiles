class AddProfileIDtoUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :profile_id, :integer
  end
end
