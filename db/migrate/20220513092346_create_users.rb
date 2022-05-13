class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :nom
      t.string :prenom
      t.string :email
      t.string :password
      t.string :password_confirmation

      t.timestamps
    end
  end
end
