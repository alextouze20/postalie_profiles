class ChangeFullnameType < ActiveRecord::Migration[6.0]
  def change
    change_column :profiles, :fullname, :string
  end
end
