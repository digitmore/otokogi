class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.integer :payment,               null: false
      t.string :place,               null: false
      t.string :rockpaperscissors,               null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
