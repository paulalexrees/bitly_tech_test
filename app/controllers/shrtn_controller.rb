class ShrtnController < ApplicationController

   def index
     @long_url = params["URL-input"]
   end

end
