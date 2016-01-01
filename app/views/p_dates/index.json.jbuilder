json.array!(@p_dates) do |p_date|
  json.extract! p_date, :id, :avail_date
  json.url p_date_url(p_date, format: :json)
end
