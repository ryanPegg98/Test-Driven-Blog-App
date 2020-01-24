class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :body, null: true

      t.timestamps
    end
  end
end