class DropRecipies < ActiveRecord::Migration[5.2]
  def change
    drop_table :recipes if ActiveRecord::Base.connection.table_exists? 'recipes'
  end
end
