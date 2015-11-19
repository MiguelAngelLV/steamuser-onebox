# name: Steam User Onebox
# about: Simple User Profile display box for Discourse
# version: 0.1
# authors: miguelangellv
# url: https://github.com/MiguelAngelLV/steamuser-onebox.git

Onebox = Onebox

module Onebox
  module Engine
    class SteamUserOnebox
      include Engine

      matches_regexp(/^(https?:\/\/)(steamcommunity.com\/id\/)([^\/]+)\/?$/)

      def to_html
        match = @url.match(/\/id\/([^\/]+)/)
        steamid = match[1]
        "<a href='#{@url}'><img src='http://steamsignature.com/status/spanish/#{steamid}.png' alt='' title='#{steamid}' /></a><a href='steam://friends/add/#{steamid}'><img style='margin-left: -4px;' src='http://steamsignature.com/AddFriend.png'></a>"
      rescue
        @url
      end

    end
  end
end
