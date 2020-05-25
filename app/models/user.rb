class User < ApplicationRecord
    has_many :posts
    has_many :comments, through: :posts
    has_many :zens, through: :posts
end
