class CreateSymptomDiagnoses < ActiveRecord::Migration[7.0]
  def change
    create_table :symptom_diagnoses do |t|
      t.belongs_to :symptom, null: false, foreign_key: true
      t.belongs_to :diagnosis, null: false, foreign_key: true

      t.timestamps
    end
  end
end
