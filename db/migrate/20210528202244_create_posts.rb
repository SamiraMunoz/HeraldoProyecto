class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :description
      t.string :journalist_name
      t.boolean :active
      t.datetime :time_mew
      t.string :summary

      t.timestamps
    end
  end
end
