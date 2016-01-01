json.array!(@e_times) do |e_time|
  json.extract! e_time, :id, :start_time, :end_time
  json.url e_time_url(e_time, format: :json)
end
