class User < ApplicationRecord
  has_many :symptom_records
end
