json.extract! medication, :id, :name, :price, :duration_of_supply_in_months, :created_at, :updated_at
json.url medication_url(medication, format: :json)
