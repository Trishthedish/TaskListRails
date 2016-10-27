class User < ActiveRecord::Base
  validates :email, :uid, :provider, presence: true

  def self.build_from_github(auth_hash)
    user       = User.new
    user.uid   = auth_hash[:uid]
    user.provider = 'github'
    user.name  = auth_hash['info']['name']
    user.email = auth_hash['info']['email']
    user.avatar = auth_hash['extra']['raw_info']["avatar_url"]
    user.followercount = auth_hash["extra"]['raw_info']['followers'].to_i
    return user
  end
end
