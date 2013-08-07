class CreateReaderArticles < ActiveRecord::Migration
  def change
    create_table :reader_articles do |t|
      t.string :name
      t.string :email
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
