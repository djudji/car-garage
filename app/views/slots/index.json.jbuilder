json.array!(@slots) do |slot|
  json.extract! slot, :id, :occupied
  json.url slot_url(slot, format: :json)
end
