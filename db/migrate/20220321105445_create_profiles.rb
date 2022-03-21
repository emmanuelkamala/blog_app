class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.date :birthday
      t.text :bio
      t.string :color
      t.string :twitter
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
