class SpecialtiesController < ApplicationController

  def index
    @specialties = Specialty.all
  end

  def show
  end

  def new
    @specialty = Specialty.new
  end

  def create
    @specialty = Specialty.new(params[:specialty])
    if @specialty.save
      redirect_to @specialty, :notice => "Successfully created specialty."
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    if @specialty.update_attributes(params[:specialty])
      redirect_to @specialty, :notice  => "Successfully updated specialty."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @specialty.destroy
    redirect_to specialties_url, :notice => "Successfully destroyed specialty."
  end

  private

  def find_specialty
    @specialty = Specialty.find(params[:id])
  end

  def find_specialties
    @specialties = Specialty.all
  end
end
