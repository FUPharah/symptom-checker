class DiagnosesController < ApplicationController
  before_action :find_diagnosis, only: [:show]

  def index
    @diagnoses = Diagnosis.all
  end

  def match
    selected_symptoms = Symptom.where(id: params[:symptom_ids])
    matching_diagnoses = Diagnosis.includes(:symptoms, :specialties).where(symptoms: { id: selected_symptoms.pluck(:id) }).references(:symptoms)
    @diagnoses = matching_diagnoses
    @specialties = selected_symptoms.map(&:specialties).flatten.uniq

    render :match_results
  end

  def match_results
    # get the selected symptom ids from the form submission
    selected_symptom_ids = params[:symptom_ids].map(&:to_i)

    # find the diagnoses that match the selected symptoms
    @diagnoses = Diagnosis.joins(:symptoms)
                          .where(symptoms: { id: selected_symptom_ids })
                          .distinct

    # find the specialties that match the selected symptoms and include their associated symptoms
    @specialties = Specialty.joins(:symptoms)
                            .where(symptoms: { id: selected_symptom_ids })
                            .includes(:symptoms)
                            .distinct
  end



  private

  def find_diagnosis
    @diagnosis = Diagnosis.find(params[:id])
  end

  def find_diagnoses
    @diagnoses = Diagnosis.all
  end
end
