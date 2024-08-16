class StaticController < ApplicationController
  require 'flickr'

  def index
    flickr = Flickr.new

    @photos = nil

    if params[:query]
      @photos = flickr.photos.search(api_key: Flickr.api_key, user_id: params[:query])
    end
  end
end
