class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
	t.string :url
    t.timestamps
	t.belongs_to :user, index: true
    end
  end
end
