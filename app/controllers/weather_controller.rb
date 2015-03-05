class WeatherController < ApplicationController
  def index
   
  end

  def create

     # @weather = Weather.new
  end

  def saved

      # binding.pry
    @zipcode = params[:zipcode]      
    cookies[:zipcode] = @zipcode.to_s
    if @zipcode
     params[:zipcode] = cookies[:zipcode]
    end    

        
    
  end
  # private
  # def foo_params
  #   params.require(:foo).permit(:zipcode)
  # end
end




# enter_zipcode = Weather.where(zipcode: params[:zipcode])
#     if enter_zipcode
#       @zipcode = Weather.new
#       # binding.pry
#   @zipcode = params[:zipcode]
#       zipcode_params = params[:zipcode]
#       @zipcode.to_s = Weather.create zipcode_params
#         if @zipcode.save
        
#         cookies[:zipcode] = params[:zipcode]
#         end

