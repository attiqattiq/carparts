json.extract! bill, :id, :bill_id, :amount, :bill_date, :created_at, :updated_at
json.url bill_url(bill, format: :json)