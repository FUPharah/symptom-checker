# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# diagnosis_list.each do |diagnosis|
#   Diagnosis.create!(name: diagnosis[:name], description: diagnosis[:description])
# end

#   specialty_list.each do |specialty|
#     Specialty.create!(name: specialty[:name], description: specialty[:description])
#   end

# symptom_list = [
#   { name: "Headache", description: "A continuous pain in the head." },
#   { name: "Nausea", description: "A feeling of sickness with an inclination to vomit." },
#   { name: "Sensitivity to light", description: "An increased discomfort or pain in the eyes when exposed to light." },
#   { name: "Sensitivity to sound", description: "An increased discomfort or pain in the ears when exposed to sound." },
#   { name: "Dizziness", description: "A sensation of unsteadiness or loss of balance." },
#   { name: "Weakness", description: "A lack of physical or muscle strength." },
#   { name: "Blurred vision", description: "A loss of sharpness of vision, making objects appear out of focus and hazy." },
#   { name: "Nose bleeding", description: "Bleeding from the blood vessels in the nose." },
#   { name: "Shortness of breath", description: "Difficulty breathing or feeling like you can't get enough air." },
#   { name: "Cold sweat", description: "Sudden sweating unrelated to heat or physical exertion, often due to stress or pain." },
#   { name: "Chest pain", description: "Pain or discomfort in the chest area, which may be caused by various factors." },
#   { name: "Neck pain", description: "Pain or discomfort in the neck area." },
#   { name: "Jaw pain", description: "Pain or discomfort in the jaw area." },
#   { name: "Back pain", description: "Pain or discomfort in the back area." },
#   { name: "Tiredness", description: "A state of physical or mental fatigue." },
#   { name: "Upper abdominal pain", description: "Pain or discomfort in the upper part of the abdomen." },
#   { name: "Vomiting", description: "The involuntary emptying of stomach contents through the mouth." },
#   { name: "Intestinal gas", description: "Excess gas in the intestines, leading to bloating and flatulence." },
#   { name: "High fever", description: "An abnormally high body temperature, usually accompanied by shivering and weakness." },
#   { name: "Sore throat", description: "Pain or irritation in the throat, often caused by inflammation or infection." },
#   { name: "Difficulty swallowing", description: "Pain or discomfort when swallowing, due to various possible causes." },
#   { name: "Numbness in the legs", description: "Loss of sensation or tingling in the legs." },
#   { name: "Stomach pain", description: "Pain or discomfort in the stomach area." },
#   { name: "Burning sensation in the stomach", description: "A feeling of heat or burning in the stomach, often related to acid reflux or indigestion." },
#   { name: "Bloating", description: "A feeling of fullness or swelling in the abdomen, often due to gas or fluid retention." },
#   { name: "Fast heartbeat", description: "A rapid or irregular heart rate, also known as tachycardia." },
#   { name: "Sweating", description: "The release of moisture from the sweat glands in the skin, often in response to heat or stress." },
#   { name: "Irritability or confusion", description: "A state of agitation or difficulty in understanding, often due to stress, fatigue, or illness." },
#   { name: "Dry mouth", description: "A lack of saliva, often causing difficulty in swallowing and a feeling of thirst." },
#   { name: "Increased thirst", description: "An unusually strong and persistent feeling of needing to drink fluids." },
#   { name: "Frequent peeing", description: "The need to urinate more often than usual, sometimes caused by increased fluid intake, certain medical conditions, or medications." },
#   { name: "Unintentional weight loss", description: "An unplanned reduction in body weight, often due to illness or changes in diet and exercise habits." },
#   { name: "Recurrent infections", description: "Repeated occurrences of infection, which may indicate an underlying health issue or weakened immune system." }
# ]

# symptom_list.each do |symptom|
#   Symptom.create!(name: symptom[:name], description: symptom[:description])
# end

# puts "Finished!"~

puts "Cleaning database..."
Symptom.destroy_all
Diagnosis.destroy_all
Specialty.destroy_all
puts "Creating symptoms..."

diagnosis_list = [
  { name: "Migraine", description: "A severe, recurring headache often accompanied by nausea, vomiting, and sensitivity to light and sound." },
  { name: "Hypertension", description: "A condition in which the force of the blood against the artery walls is consistently too high." },
  { name: "Heart attack", description: "A blockage of blood flow to the heart muscle, often caused by a blood clot." },
  { name: "Gall stones", description: "Hardened deposits of digestive fluid that can form in the gallbladder, causing pain and other complications." },
  { name: "Inflammation", description: "A localized physical condition in which part of the body becomes reddened, swollen, hot, and often painful." },
  { name: "Throat infection", description: "An infection of the throat, often caused by bacteria or viruses, leading to pain and inflammation." },
  { name: "Lumbar hernia", description: "A protrusion of tissue or an organ through an abnormal opening in the lumbar region of the spine." },
  { name: "Ulcer", description: "A sore that develops on the lining of the esophagus, stomach, or small intestine, often causing pain and discomfort." },
  { name: "Gastritis", description: "Inflammation of the stomach lining, often caused by infection, injury, or irritation from certain medications."},
  { name: "Hypoglycemia", description: "A condition characterized by an abnormally low level of blood sugar (glucose), often causing symptoms such as shakiness, sweating, and confusion." },
  { name: "Hypotension", description: "A condition in which blood pressure is lower than normal, sometimes leading to dizziness and fainting." },
  { name: "Diabetes mellitus", description: "A group of diseases that result in too much sugar in the blood, affecting the way your body processes glucose." }
]

specialty_list = [
  { name: "Neurology", description: "A branch of medicine that deals with disorders of the nervous system." },
  { name: "Cardiology", description: "A branch of medicine that deals with disorders of the heart and blood vessels." },
  { name: "Emergency room (ER)", description: "A department in a hospital responsible for providing immediate care to patients with acute illnesses or injuries." },
  { name: "General surgery", description: "A surgical specialty that focuses on the treatment of injuries, diseases, and disorders involving the abdomen, breast, and more." },
  { name: "Ear, Nose, and Throat (ENT) department", description: "A specialty focused on the diagnosis and treatment of diseases and disorders of the ears, nose, and throat." },
  { name: "Internal medicine", description: "A branch of medicine that deals with the diagnosis, treatment, and prevention of a wide range of adult diseases." },
  { name: "Orthopedics", description: "A medical specialty focused on the diagnosis, treatment, and prevention of disorders of the musculoskeletal system." },
  { name: "Neurosurgery", description: "A surgical specialty that deals with the diagnosis and treatment of disorders affecting the brain, spinal cord, and nervous system." },
  { name: "Gastroenterology", description: "A branch of medicine that deals with the diagnosis and treatment of disorders of the digestive system, including the stomach, intestines, and liver." },
  { name: "Endocrinology", description: "A medical specialty focused on the diagnosis and treatment of hormone-related disorders, including diabetes, thyroid diseases, and more." },
  { name: "Cardiology", description: "A branch of medicine that deals with the diagnosis, treatment, and prevention of heart and blood vessel diseases." }
]

diagnosis_list.each do |diagnosis|
  Diagnosis.create!(name: diagnosis[:name], description: diagnosis[:description])
end

specialty_list.each do |specialty|
  Specialty.create!(name: specialty[:name], description: specialty[:description])
end

symptom_list = [
  { name: "Headache", description: "A continuous pain in the head.", diagnosis: "Migraine", specialty: "Neurology" },
  { name: "Nausea", description: "A feeling of sickness with an inclination to vomit.", diagnosis: "Migraine", specialty: "Neurology" },
  { name: "Sensitivity to light", description: "An increased discomfort or pain in the eyes when exposed to light.", diagnosis: "Migraine", specialty: "Neurology" },
  { name: "Sensitivity to sound", description: "An increased discomfort or pain in the ears when exposed to sound.", diagnosis: "Migraine", specialty: "Neurology" },
  { name: "Dizziness", description: "A sensation of unsteadiness or loss of balance.", diagnosis: "Hypertension", specialty: "Cardiology" },
  { name: "Weakness", description: "A lack of physical or muscle strength.", diagnosis: "Heart attack", specialty: "Cardiology" },
  { name: "Blurred vision", description: "A loss of sharpness of vision, making objects appear out of focus and hazy.", diagnosis: "Heart attack", specialty: "Cardiology" },
  { name: "Nose bleeding", description: "Bleeding from the blood vessels in the nose.", diagnosis: "Hypertension", specialty: "Cardiology" },
  { name: "Shortness of breath", description: "Difficulty breathing or feeling like you can't get enough air.", diagnosis: "Heart attack", specialty: "Cardiology" },
  { name: "Cold sweat", description: "Sudden sweating unrelated to heat or physical exertion, often due to stress or pain.", diagnosis: "Heart attack", specialty: "Cardiology" },
  { name: "Chest pain", description: "Pain or discomfort in the chest area, which may be caused by various factors.", diagnosis: "Heart attack", specialty: "Cardiology" },
  { name: "Neck pain", description: "Pain or discomfort in the neck area.", diagnosis: "Heart attack", specialty: "Cardiology" },
  { name: "Jaw pain", description: "Pain or discomfort in the jaw area.", diagnosis: "Heart attack", specialty: "Cardiology" },
  { name: "Back pain", description: "Pain or discomfort in the back area.", diagnosis: "Heart attack", specialty: "Cardiology" },
  { name: "Tiredness", description: "A state of physical or mental fatigue.", diagnosis: "Hypertension", specialty: "Cardiology" },
  { name: "Upper abdominal pain", description: "Pain or discomfort in the upper part of the abdomen.", diagnosis: "Gall stones", specialty: "General surgery" },
  { name: "Vomiting", description: "The involuntary emptying of stomach contents through the mouth.", diagnosis: "Gall stones", specialty: "General surgery" },
  { name: "Intestinal gas", description: "Excess gas in the intestines, leading to bloating and flatulence.", diagnosis: "Gall stones", specialty: "General surgery" },
  { name: "High fever", description: "An abnormally high body temperature, usually accompanied by shivering and weakness.", diagnosis: "Inflammation"},
  { name: "Bloating", description: "A feeling of fullness or swelling in the abdomen, often due to gas or fluid retention.", diagnosis: "Gastritis", specialty: "Gastroenterology" },
  { name: "Fast heartbeat", description: "A rapid or irregular heart rate, also known as tachycardia.", diagnosis: "Hypertension", specialty: "Cardiology" },
  { name: "Sweating", description: "The release of moisture from the sweat glands in the skin, often in response to heat or stress.", diagnosis: "Diabetes mellitus", specialty: "Endocrinology" },
  { name: "Irritability or confusion", description: "A state of agitation or difficulty in understanding, often due to stress, fatigue, or illness.", diagnosis: "Hypoglycemia", specialty: "Endocrinology" },
  { name: "Dry mouth", description: "A lack of saliva, often causing difficulty in swallowing and a feeling of thirst.", diagnosis: "Diabetes mellitus", specialty: "Endocrinology" },
  { name: "Increased thirst", description: "An unusually strong and persistent feeling of needing to drink fluids.", diagnosis: "Diabetes mellitus", specialty: "Endocrinology" },
  { name: "Frequent peeing", description: "The need to urinate more often than usual, sometimes caused by increased fluid intake, certain medical conditions, or medications.", diagnosis: "Diabetes mellitus", specialty: "Endocrinology" },
  { name: "Unintentional weight loss", description: "An unplanned reduction in body weight, often due to illness or changes in diet and exercise habits.", diagnosis: "Hypothyroidism", specialty: "Endocrinology" },
  { name: "Recurrent infections", description: "Repeated occurrences of infection, which may indicate an underlying health issue or weakened immune system.", diagnosis: "Hypothyroidism", specialty: "Endocrinology" }
]

symptom_list.each do |symptom|
  new_symptom = Symptom.create!(name: symptom[:name], description: symptom[:description])
  matching_diagnoses = Diagnosis.where(name: symptom[:diagnosis])
  matching_specialty = Specialty.where(name: symptom[:specialty])
  new_symptom.diagnoses << matching_diagnoses
  new_symptom.specialties << matching_specialty
end

puts "Finished seeding database."
