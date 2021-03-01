class DogsController < ApplicationController
  def index
    @dogs = Dog.all 
    render :index 
  
  end

  def show
    @dog = Dog.find(params[:id])
    if @dog 
      render :show
    else
      redirect_to dogs_url
    end
  end


  def new
    @dog = Dog.new
    render :new
  end
  
  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      render :new
    else
      render :new
    end
  end

  def dog_parmas
    params.requre(:dog).permit(:name, :birth_date, :breed, :sex)
  end




end


def show
 @Dog = Dog.find(params[:id])
 render: show

end

def new
  @Dog = Dog.new
  render :new
end

def create
  @dog = Dog.new(dog_params)
  if @dog.save 
    redirect_to dog_url(@dog)
  else
    render :new
  end
end

def index
  @dogs = Dog.all
  render :index
end

def show
  @dog = Dog.find(params[:id])
  render :show
end

def new
  @dog = Dog.new
  render :new
end

def create
  @dog = Dog.new(dog_params)
  if @dog.save
    redirect_to dog_url(@dog)
  else
    render :new
  end
end

def update
  @dog = Dog.new(dog_params[:id])
  if @dog.update_attributes(dog_parms)
    redirect_to dog_url(@dog)
  else
    render :edit
  end
end

def dog_params
  params.require(:dog).permit(:column_names)
end

def index
  @dogs = Dog.all
  render :index
end

def show
  @dog = Dog.find(params[:id])
  render :show
end

def new
  @dog = Dog.new
  render :new
end

def create
  @dog = Dog.new(dog_params)
  if @dog.save
    redirect_to dog_url(@dog)
  else
    render :new
  end
end

def update
  @dog = dog.find(params[:id])
  if @dog.update_attributes(dog_params)
    redirect_to dog_url(@dog)
  else
    render :edit
  end

  cat_params
  params.require(:dog).permit(:name, :age)
end


  














