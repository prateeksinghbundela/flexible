class CreateLikeDoubles < ActiveRecord::Migration[5.2]
  def change
    create_table :like_doubles do |t|
      t.string :name

      t.timestamps
    end
  end
end
