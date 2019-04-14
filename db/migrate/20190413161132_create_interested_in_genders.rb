class CreateInterestedInGenders < ActiveRecord::Migration[5.2]
  def change
    create_table :interested_in_genders do |t|
      t.references :gender, foreign_key: true

      t.timestamps
    end
  end
end
