class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :details, :text
  end
end
