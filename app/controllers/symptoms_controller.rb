class SymptomsController < ApplicationController
  # before_action :load_previous_symptoms, only: [:index, :show]

  def index
    @symptoms = Symptom.all
  end

  def select
    @symptoms = Symptom.all
  end
  
  def show
    @symptom = Symptom.find(params[:id])
  end

  def create
    @symptom_record = current_user.symptom_records.new(symptom_params)
    if @symptom_record.save
      redirect_to symptoms_path, notice: 'Symptom recorded successfully.'
    else
      render :index
    end
  end

  private

  def symptom_params
    params.require(:symptom).permit(:id)
  end

  # def load_previous_symptoms
  #   @previous_symptoms = current_user.symptom_records.includes(:symptom)
  # end
end
