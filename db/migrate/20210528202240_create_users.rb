class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.bigint :cellphone
      t.string :address
      t.string :username

      t.timestamps
    end
  end
end
