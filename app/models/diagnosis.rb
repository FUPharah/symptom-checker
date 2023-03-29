class Diagnosis < ApplicationRecord
  has_many :symptom_diagnoses
  has_many :symptoms, through: :symptom_diagnoses
  has_many :specialty_diagnoses
  has_many :specialties, through: :specialty_diagnoses
end
