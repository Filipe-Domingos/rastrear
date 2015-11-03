class HomeController < ApplicationController
  def index
    @markers = [{lat:-22.382882,long:-41.773065 },
                {lat:-21.773202,long:-41.3596074}]
     
    @hash = Gmaps4rails.build_markers(@markers) do |m, marker|
      
      marker.lat m[:lat]
      marker.lng m[:long]
    end
    
  end

  def login
  end
end
