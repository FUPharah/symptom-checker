class CreateSpecialtySymptoms < ActiveRecord::Migration[7.0]
  def change
    create_table :specialty_symptoms do |t|
      t.references :specialty, null: false, foreign_key: true
      t.references :symptom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
