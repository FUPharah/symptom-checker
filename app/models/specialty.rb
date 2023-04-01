class Specialty < ApplicationRecord
  has_many :specialty_diagnoses
  has_many :diagnoses, through: :specialty_diagnoses
  has_and_belongs_to_many :symptoms
end
