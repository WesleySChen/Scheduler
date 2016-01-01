json.array!(@e_dates) do |e_date|
  json.extract! e_date, :id, :pos_date
  json.url e_date_url(e_date, format: :json)
end
