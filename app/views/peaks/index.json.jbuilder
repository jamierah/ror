json.array!(@peaks) do |peak|
  json.extract! peak, :id, :name, :altitude, :park
  json.url peak_url(peak, format: :json)
end
