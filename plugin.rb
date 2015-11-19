# name: Steam User Onebox
# about: Simple User Profile display box for Discourse
# version: 0.1
# authors: miguelangellv
# url: https://github.com/MiguelAngelLV/steamuser-onebox.git

register_asset "style.css"

Onebox = Onebox

module Onebox
  module Engine
    class SteamUserOnebox
      include Engine

      matches_regexp(/^https?:\/\/steamcommunity.com\/(id|profiles)\/([^\/]+)\/?$/)

      def to_html
        match = @url.match(/\/(id|profiles)\/([^\/]+)/)
        steamid = match[2]
        "<div class='steamprofile'><a href='#{@url}' target='_blank'><img src='http://steamsignature.com/status/spanish/#{steamid}.png' alt='' title='#{steamid}' /></a><a href='steam://friends/add/#{steamid}'><img class='addfriend' src='http://steamsignature.com/AddFriend.png'></a></div>"
      rescue
        @url
      end

    end
  end
end
