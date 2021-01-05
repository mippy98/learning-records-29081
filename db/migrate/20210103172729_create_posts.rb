class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string     :title,         null: false
      t.text       :conclusion,    null: false
      t.text       :content,       null: false
      t.integer    :study_time_id, null: false
      t.integer    :category_id,   null: false
      t.integer    :user_id,       null: false, foreign_key: false
      t.integer    :comment_id,    foreign_key: false
      t.timestamps
    end
  end
end
