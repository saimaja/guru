class User < ApplicationRecord
    has_secure_password

    has_many :assignments
    has_many :roles, through: :assignments
    
    has_many :posts
    has_many :comments, through: :posts
    has_many :zens, through: :posts

    has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow', dependent: :destroy
    has_many :following_users, foreign_key: :followee_id, class_name: 'Follow', dependent: :destroy
    
    has_many :followees, through: :followed_users
    has_many :followers, through: :following_users

    def follow(user)
        followed_users.create(followee_id: user.id)
    end

    def unfollow(user)
        followed_users.find_by(followee_id: user.id).destroy
    end

    def following?(user)
        followees.include?(user)
    end

    def role?(role)  
        roles.any? { |r| r.name.underscore.to_sym == role }  
        end   

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