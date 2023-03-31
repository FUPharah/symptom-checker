class Symptom < ApplicationRecord
  has_many :symptom_diagnoses, dependent: :delete_all
  has_many :diagnoses, through: :symptom_diagnoses
  has_many :specialty_symptoms, dependent: :delete_all
  has_many :specialties, through: :specialty_symptoms
end
