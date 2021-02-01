class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.belongs_to :course
      t.string :title
      t.text :intro
      t.string :iframe_link
      t.text :outro

      t.timestamps
    end
  end
end
