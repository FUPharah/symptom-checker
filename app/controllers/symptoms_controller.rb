class SymptomsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @symptom = Symptom.new
  end

  def create
    @symptom = Symptom.new(params[:symptom])
    if @symptom.save
      redirect_to @symptom, :notice => "Successfully created symptom."
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    if @symptom.update_attributes(params[:symptom])
      redirect_to @symptom, :notice  => "Successfully updated symptom."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @symptom.destroy
    redirect_to symptoms_url, :notice => "Successfully destroyed symptom."
  end

  private

  def find_symptom
    @symptom = Symptom.find(params[:id])
  end

  def find_symptoms
    @symptoms = Symptom.all
  end
end
