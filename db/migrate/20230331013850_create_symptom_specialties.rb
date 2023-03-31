class CreateSymptomSpecialties < ActiveRecord::Migration[7.0]
  def change
    create_table :symptom_specialties do |t|
      t.belongs_to :symptom, null: false, foreign_key: true
      t.belongs_to :specialty, null: false, foreign_key: true

      t.timestamps
    end
  end
end
