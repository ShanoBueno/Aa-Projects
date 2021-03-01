class CharactersController < ApplicationController
  
  def index
    @characters = Character.all
    render :index
  end

  def show
    @character = Character.find(params[:id])
    render :show
  end

  def new
    @character = Character.new
    render :new
  end

  def create
    @character = Character.new(character_params)
    if character.save
      redirect_to character_url(@character)
    else
      render :new
    end
  end

def edit
  @character = Character.find(params[:id])
  if character.update_attributes(character_params)
    redirect_to character_url(@character)
  else
    render :edit
  end
end

private

def character_params
  params.require(:character).permit(:name, :birth_date, :sex, :alignment)

end

end

