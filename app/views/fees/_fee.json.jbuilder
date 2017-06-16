json.extract! fee, :id, :hearing_id, :amount_paid, :fee_paid_date, :fee_comment, :created_at, :updated_at
json.url fee_url(fee, format: :json)
