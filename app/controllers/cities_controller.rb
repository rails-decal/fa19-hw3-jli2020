class CitiesController < ApplicationController

    def view
        @cities = City.all
        @name = params[:city]
        if not @name.nil?
            @city = @cities[@name.to_sym]
        end
    end
  
    def new
        @cities = City.all
    end

    def create
        @population = params[:population]
        @city = params[:city]
        @landmark = params[:landmark]
        if not City.all.key?(@city.to_sym)
            city = City.new(name: @city, landmark:@landmark, population: @population)
            city.save
        end
    end

    def edit
    end 

    def update
        @city = params[:city]
        if not @city.nil? and not City.all[@city.to_sym].nil?
            
    end 

    
end