# name: Steam User Onebox
# about: Simple User Profile display box for Discourse
# version: 0.1
# authors: miguelangellv
# based in Steam Steam Store Widget:  https://github.com/fearlessfrog/steamstorewidget-onebox
# url: https://github.com/MiguelAngelLV/steamuser-onebox.git

Onebox = Onebox

module Onebox
  module Engine
    class SteamUserOnebox
      include Engine

      matches_regexp(/^(https?:\/\/)(steamcommunity.com\/id\/)([^\/]+)\/?$/)

      def to_html
        match = @url.match(/^(https?:\/\/)(steamcommunity.com\/id\/)([^\/]+)\/?$/)
        steamid = match[3]
        "<img src='http://steamsignature.com/status/#{steamid}.png' alt='' title='#{steamid}' /><a href='steam://friends/add/#{steamid}'><img src='http://steamsignature.com/AddFriend.png'></a>"
      rescue
        @url
      end

    end
  end
end
