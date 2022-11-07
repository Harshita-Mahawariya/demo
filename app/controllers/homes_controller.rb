class HomesController < ApplicationController
  
  def index
     @homes = Person.all
  end


  

  def show
    @home = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(home_params)
    
    if @person.save
      #redirect_to @home
      redirect_to home_path(@person.id)
    else
      render 'new'
    end
  end

  private
  def home_params
    params.require(:person).permit(:name, :description, :check_box, [:gender], :email, :email_confirmation, :level, :password, :password_c)
  end
end
