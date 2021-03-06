class LocationsController < ApplicationController
  def index
    @locations = Location.all
    # locations_collection = []
    # locations.each do |location|
    #   locations_collection << {
    #                             name: location.name,
    #                             address: location.address,
    #                             latitude: location.latitude,
    #                             longitude: location.longitude
    #                           }
    #   end
    #   render json: {locations: locations_collection} 
    search_term = params[:search]
    if search_term
      @locations = @locations.where("name iLIKE ?",
                                  "%#{search_term}%"
                                  )
    else
    end
    sort_attribute = params[:sort]
    if sort_attribute
      @locations = @locations.order(sort_attribute)
    else
    end       
    render 'index.json.jbuilder'
    end
  def create
    location = Location.new(
                            name: params[:name],
                            address: params[:address],
                            latitude: params[:latitude],
                            longitude: params[:longitude]
                          )
    if location.save
      render json: location.as_json
    else
      render json: {errors: location.errors.full_messages}, status: :unprocessable_entity
    end
  end
    def show
      input_id = params[:id]
      @location = Location.find_by(id: input_id)
      render 'show.json.jbuilder'
    end
    def update
      @location = Location.find(params[:id])

      @location.name = params[:name] || @location.name
      @location.address = params[:address] || @location.address
      @location.latitude = params[:latitude] || @location.latitude
      @location.longitude = params[:longitude] || @location.longitude

      if @location.save
        render 'show.json.jbuilder'
      else
        render json: {errors: @location.errors.full_messages}, status: :unprocessable_entity
      end 
    end
    def destroy
      location = Location.find(params[:id])
      location.destroy 
      render json: {message: "Successfully destroyed location id# #{location.id}"}
      
    end
  end

 






