json.array!(@p_times) do |p_time|
  json.extract! p_time, :id, :p_start, :p_end
  json.url p_time_url(p_time, format: :json)
end
