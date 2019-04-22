class CreateInformationUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :information_users do |t|
      t.references :user, foreign_key: {on_delete: :cascade}
      t.references :gender, foreign_key: true

      t.string :first_name
      t.string :last_name
      t.string :address
      t.text :description
      t.datetime :birthday
      t.integer :weight
      t.integer :height
      t.integer :education
      t.integer :religion
      t.integer :children
      t.integer :relationship

      t.timestamps
    end
  end
end
