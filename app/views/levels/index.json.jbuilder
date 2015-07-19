json.array!(@levels) do |level|
  json.extract! level, :id, :number, :num_slots
  json.url level_url(level, format: :json)
end
