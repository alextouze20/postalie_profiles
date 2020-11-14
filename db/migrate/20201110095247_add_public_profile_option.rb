class AddPublicProfileOption < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :public, :boolean
  end
end
