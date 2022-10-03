class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :name_kana
      t.string :company
      t.string :company_kana
      t.string :mail
      t.string :password
      t.string :slack_id
      t.string :room_number

      t.timestamps
    end
  end
end
