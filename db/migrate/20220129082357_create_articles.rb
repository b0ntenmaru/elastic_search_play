class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title, null: false, limit: 10, comment: "記事のタイトル"
      t.text   :description, null: false, comment: "記事の本文"
      t.string :screen_name, null: false, comment: "表示名"

      t.timestamps
    end
  end
end
