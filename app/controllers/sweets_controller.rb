class SweetsController < ApplicationController
  before_action :regular, only: [:show]

  def index
    @sweets = Sweet.all
  end
 
    def show
         
    end
    
    def new
        @sweet = Sweet.new
    end
    
    def create
        @sweet = Sweet.create(sweet_params) 
        if @sweet.valid?
          flash[:success] = "sweet successfully created"
          redirect_to @sweet
        else
          flash[:error] = @sweet.errors.full_messages
          render new_sweet_path(@sweet)
        end
    end



private 
    def regular
        @sweet = Sweet.find(params[:id])
    end

    def sweet_params
        params.require(:sweet).permit(:name)
    end 
    

end
