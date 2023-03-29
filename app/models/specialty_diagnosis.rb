class SpecialtyDiagnosis < ApplicationRecord
  belongs_to :specialty
  belongs_to :diagnosis
end
