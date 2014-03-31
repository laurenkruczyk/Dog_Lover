class OwnersController < ApplicationController
  def new
    @owner = Owner.new
  end

   def index
    @owners = Owner.all
  end

  def create
    @owner = Owner.new(owner_params)

    if @owner.save
      redirect_to @owner, notice: "You have created a new dog. Good job."
    else
      render 'new'
    end
  end

  def show
    @owner = Owner.find(params[:id])
  end

 private

  def owner_params
    params.require(:owner).permit(:id, :first_name, :last_name, :email, :dog_name)
  end
end
