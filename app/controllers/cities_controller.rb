class CitiesController < ApplicationController
  def index
      @Citys = City.all
    end
  
    def show
       @city = City.find(params[:id])    
      end
      
    def new
      @city = City.new
    end
  
    def create
      #binding.pry
      puts "je suis dans le controller"
      @city = City.new('name' => params[:name])
          
      if @city.save
        redirect_to acceuil_path
      else
        render 'new'
      end
    end
  
    def edit
      @city = City.find(params[:id])
    end
  
    def update
      @city = City.find(params[:id])
      @city.update(city_params)
      redirect_to city_path(@city.id)
    end
  
    def destroy
      @city = City.find(params[:id])
      @city = City.destroy
      redirect_to citys_path
    end

    def city_params
      params.require(:zip_code).permit(:name)
  end

end