class ApplicationController < ActionController::Base
    Pagy::DEFAULT[:items] = 10
    include Pagy::Backend

    require 'pagy/extras/bootstrap'
    #Pagy::I18n.load(locale: 'es', filepath: 'config/locales/es.yml')


    before_action :set_tweet

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

    
end
