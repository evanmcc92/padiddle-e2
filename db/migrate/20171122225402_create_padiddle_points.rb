class CreatePadiddlePoints < ActiveRecord::Migration[5.0]
  def change
    create_table :padiddle_points do |t|
      t.decimal :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
