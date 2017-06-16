json.extract! client_case, :id, :name, :client_id, :case_number, :case_type_id, :court_hall, :court_complex_id, :case_year, :advocate_id, :file_no, :state_id, :district_id, :case_status,:nature_of_case, :created_at, :updated_at
json.url client_case_url(client_case, format: :json)
