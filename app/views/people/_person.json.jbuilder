json.extract! person, :id, :document_type_id, :document_number, :verification_digit, :first_name, :middle_name, :surname, :second_surname, :business_name, :email, :created_at, :updated_at
json.url person_url(person, format: :json)
