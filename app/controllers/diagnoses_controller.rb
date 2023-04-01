class DiagnosesController < ApplicationController
  before_action :find_diagnosis, only: [:show]

  def index
    @diagnoses = Diagnosis.all
  end

  def match
    selected_symptoms = Symptom.where(id: params[:symptom_ids])
    matching_diagnoses = Diagnosis.includes(:symptoms, :specialties).where(symptoms: { id: selected_symptoms.pluck(:id) }).references(:symptoms)
    @diagnoses = matching_diagnoses
    matching_specialties = Specialty.joins(:diagnoses).where(diagnoses: { id: matching_diagnoses.pluck(:id) }).distinct
    @specialty_names = matching_specialties.pluck(:name)
    redirect_to match_results_path(diagnoses: @diagnoses.pluck(:id))
  end


  def match_results
    @diagnoses = Diagnosis.where(id: params[:diagnoses])
    @specialties = @diagnoses.flat_map(&:specialties).uniq
  end



  private

  def find_diagnosis
    @diagnosis = Diagnosis.find(params[:id])
  end

  def find_diagnoses
    @diagnoses = Diagnosis.all
  end
end
