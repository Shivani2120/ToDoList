class HomeController < ApplicationController
   def index
    if user_signed_in?
        redirect_to tages_url
    end
   end
end
