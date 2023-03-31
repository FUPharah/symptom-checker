class DiagnosesController < ApplicationController
  before_action :find_diagnosis, only: [:show]

  def index
    @diagnoses = Diagnosis.all
  end

  def match
    selected_symptoms = Symptom.where(id: params[:symptom_ids])
    matching_diagnoses = Diagnosis.includes(:symptoms, :specialties).where(symptoms: { id: selected_symptoms }).references(:symptoms)
    @diagnoses = matching_diagnoses
    @specialties = matching_diagnoses.flat_map(&:specialties).uniq
  end



  private

  def find_diagnosis
    @diagnosis = Diagnosis.find(params[:id])
  end

  def find_diagnoses
    @diagnoses = Diagnosis.all
  end
end
