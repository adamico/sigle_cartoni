class CartoniController < ApplicationController
  def index
    @cartoni = Cartone.all
  end
  
  def show
    @cartone = Cartone.find(params[:id])
  end
  
  def new
    @cartone = Cartone.new
  end
  
  def create
    @cartone = Cartone.new(params[:cartone])
    if @cartone.save
      flash[:notice] = "Successfully created cartone."
      redirect_to @cartone
    else
      render :action => 'new'
    end
  end
  
  def edit
    @cartone = Cartone.find(params[:id])
  end
  
  def update
    @cartone = Cartone.find(params[:id])
    if @cartone.update_attributes(params[:cartone])
      flash[:notice] = "Successfully updated cartone."
      redirect_to @cartone
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @cartone = Cartone.find(params[:id])
    @cartone.destroy
    flash[:notice] = "Successfully destroyed cartone."
    redirect_to cartoni_url
  end
end
