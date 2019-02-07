class DogsController < ApplicationController

  before_action :find_dog, only: [:show, :edit, :update, :destroy]

  def index
    if params["sort_by"] == "1"
      @dogs = Dog.all.sort_by{|d| d.num_of_employees}.reverse
    else
      @dogs = Dog.all.sort_by{|d| d.num_of_employees}
    end
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def find_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
  end

end
