class CreateArticleCategoryJoinTab < ActiveRecord::Migration[5.2]
  def change
    create_table :articles_categories, id: false do |t|
    	t.integer :article_id
    	t.integer :category_id

    end
  end
end
