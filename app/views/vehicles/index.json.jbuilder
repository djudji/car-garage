json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :parked, :veh_type, :lic_plate
  json.url vehicle_url(vehicle, format: :json)
end
