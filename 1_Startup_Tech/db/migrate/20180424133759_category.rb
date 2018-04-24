class Category < ActiveRecord::Migration[5.2]
  def change

  	has_and_belongs_to_many :articles
  end
end
