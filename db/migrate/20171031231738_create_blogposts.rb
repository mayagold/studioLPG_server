class CreateBlogposts < ActiveRecord::Migration[5.1]
  def change
    create_table :blogposts do |t|
      t.string :title
      t.string :body
      t.string :image

      t.timestamps
    end
  end
end
