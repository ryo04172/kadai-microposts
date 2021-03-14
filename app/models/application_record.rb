class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  def counts(user)
    @count_microposts = user.microposts.count
    @count_followings = user.followings.count
    @count_followers = user.followers.count
    @count_links = user.links.count
  end

  
end
