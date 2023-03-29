class SymptomDiagnosis < ApplicationRecord
  belongs_to :symptom
  belongs_to :diagnosis
end
