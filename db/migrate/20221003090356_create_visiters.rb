class CreateVisiters < ActiveRecord::Migration[7.0]
  def change
    create_table :visiters do |t|
      t.string :company
      t.string :name
      t.string :partner

      t.timestamps
    end
  end
end
