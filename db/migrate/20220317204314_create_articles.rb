class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :excerpt
      t.string :location
      t.text :body
      t.datetime :published_at

      t.timestamps
    end
  end
end
