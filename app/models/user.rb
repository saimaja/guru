class User < ApplicationRecord
    has_many :posts
    has_many :comments, through: :posts
    has_many :zens, through: :posts

    has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
    has_many :followees, through: :followed_users

    has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
    has_many :followers, through: :following_users

     
    def feed
       #create an empty array
       #find all followees for user
       #get posts for all followees
       #array should return followee posts for user
     
        posts = self.followees.map do |followee| 
            followee.posts
        end.flatten 
    end
    
end