class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.integer :status, default: 0, null: false

      t.timestamps null: false
    end
  end
end
