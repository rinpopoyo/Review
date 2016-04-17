module ApplicationHelper
  def avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "https://www.gravatar.com/avatar/#{gravatar_id}"
    #"https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&s=150"
    #  .jpg?d=identical&s=150 の箇所の意味がわからないため、記載していないが現状うまく動く。
  end
end
