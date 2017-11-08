class CreateDrawings < ActiveRecord::Migration[5.1]
  def change
    create_table :drawings do |t|
      t.string :filename
      t.string :title
      t.string :medium

      t.timestamps
    end
  end
end
