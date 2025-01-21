class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.float :rating
      t.string :image

      t.timestamps
    end
  end
end
