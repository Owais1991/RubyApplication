class UserBlog < ActiveRecord::Base
  belongs_to :user, polymorphic: true
end
