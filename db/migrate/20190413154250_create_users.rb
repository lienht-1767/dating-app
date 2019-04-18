class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      # t.string :email
      # t.string :password_digest
      # t.string :remember_digest
      # t.string :activation_digest
      # t.boolean :activated
      t.integer :popularity
      # t.string :reset_digest
      # t.datetime :reset_send_at
      t.boolean :admin

      t.timestamps
    end
  end
end
