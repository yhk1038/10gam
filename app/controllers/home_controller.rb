class HomeController < ApplicationController
  def index
      
  end
  
  def login
    oauth = Koala::Facebook::OAuth.new('996081407170811', '90a20ecbaca8ede8515179d2f7692b99')

    info    = oauth.get_user_info_from_cookies(cookies)
    graph   = Koala::Facebook::API.new(info["access_token"])
    profile = graph.get_object("me?fields=email,name,picture")
    uid     = profile["id"]
    email   = profile["email"]
    name    = profile["name"]
    picture = profile["picture"]["data"]["url"]
    puts "\n\n\n\t\t#{picture}\n\n\n\n\n"
    user = User.where(uid: uid).take
    if user.nil?
        user = User.new
        user.provider = "facebook"
        user.uid      = uid.to_s
        user.email    = email
        user.name     = name
        user.img      = picture
        user.password = SecureRandom.hex(16).to_s
        user.save
    end
    User.attribute_names.each do |at|
        eval("session[:#{at}] = user.#{at}")
    end
    
    # current_user = session.create(user)
    # session = user
    # current_user = session
    
    puts "\n\n\n\t\t#{user}\n\n\n\n\n"
    return render json: user
  end
  
  def logout
    session.clear
    return render json: {type: true}
  end
end
