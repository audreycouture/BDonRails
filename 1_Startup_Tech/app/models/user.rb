class User < ApplicationRecord
  	has_many :articles
  	has_many :categories, through: :articles
end
