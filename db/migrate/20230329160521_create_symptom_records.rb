class CreateSymptomRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :symptom_records do |t|
      t.references :symptom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
