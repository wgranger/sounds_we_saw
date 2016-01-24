require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, '64295f68bbe24ac7ac3154f6d6a1ee5c', '4255bfa20eae402590843b749a158570', scope: 'playlist-modify-public playlist-modify-private'
end