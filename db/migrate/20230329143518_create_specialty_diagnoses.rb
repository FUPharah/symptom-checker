class CreateSpecialtyDiagnoses < ActiveRecord::Migration[7.0]
  def change
    create_table :specialty_diagnoses do |t|
      t.belongs_to :specialty, null: false, foreign_key: true
      t.belongs_to :diagnosis, null: false, foreign_key: true

      t.timestamps
    end
  end
end
