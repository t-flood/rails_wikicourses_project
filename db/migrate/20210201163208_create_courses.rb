class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.belongs_to :topic, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.text :overview
      t.text :conclusion

      t.timestamps
    end
  end
end
