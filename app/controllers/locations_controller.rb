class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  # GET /locations
  # GET /locations.json
  def index
    @locations = Location.all
  if params[:search]
    @locations = Location.search(params[:search])
  else
    @locations = Location.all
  end
  if params[:option] == "neighborhood"
    @locations = Location.all.sort_by {|location| location.neighborhood}
  elsif params[:option] == "rating"
    @locations = Location.all.sort_by do |location|
      if location.overall_rating.to_f.nan?
        location.overall_rating= "0"
      else
      location.overall_rating.to_s
    end
      end.reverse
  else
    @locations = Location.all
end
end


# if params[:option] == "DESC"
#   @dogs = Dog.all.sort_by {|dog| dog.employee_count}
# elsif params[:option] == "ASC"
#   @dogs = Dog.all.sort_by {|dog| dog.employee_count}.reverse
# else
#   @dogs = Dog.all
# end
# end




  # GET /locations/1
  # GET /locations/1.json
  def show
  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:name, :neighborhood, :size, :cost_of_admission, :image_url, :description, :search)
    end
end
