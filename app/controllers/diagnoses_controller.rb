class DiagnosesController < ApplicationController

  def index
  end

  def show
  end

  def new
    @diagnosis = Diagnosis.new
  end

  def create
    @diagnosis = Diagnosis.new(params[:diagnosis])
    if @diagnosis.save
      redirect_to @diagnosis, :notice => "Successfully created diagnosis."
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    if @diagnosis.update_attributes(params[:diagnosis])
      redirect_to @diagnosis, :notice  => "Successfully updated diagnosis."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @diagnosis.destroy
    redirect_to diagnoses_url, :notice => "Successfully destroyed diagnosis."
  end

  private

  def find_diagnosis
    @diagnosis = Diagnosis.find(params[:id])
  end

  def find_diagnoses
    @diagnoses = Diagnosis.all
  end
end
