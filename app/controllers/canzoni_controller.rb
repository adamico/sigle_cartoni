class CanzoniController < ApplicationController
  def index
    @canzoni = Canzone.all
  end
  
  def show
    @canzone = Canzone.find(params[:id])
  end
  
  def new
    @canzone = Canzone.new
  end
  
  def create
    @canzone = Canzone.new(params[:canzone])
    if @canzone.save
      flash[:notice] = "Successfully created canzone."
      redirect_to @canzone
    else
      render :action => 'new'
    end
  end
  
  def edit
    @canzone = Canzone.find(params[:id])
  end
  
  def update
    @canzone = Canzone.find(params[:id])
    if @canzone.update_attributes(params[:canzone])
      flash[:notice] = "Successfully updated canzone."
      redirect_to @canzone
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @canzone = Canzone.find(params[:id])
    @canzone.destroy
    flash[:notice] = "Successfully destroyed canzone."
    redirect_to canzoni_url
  end
end
