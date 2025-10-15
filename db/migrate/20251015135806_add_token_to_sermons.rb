class AddTokenToSermons < ActiveRecord::Migration[8.0]
  def change
    add_column :sermons, :token, :string
    add_index :sermons, :token
  end
end
