json.array!(@bands) do |band|
  json.extract! band, :id, :name, :musicians, :website, :currently_together
  json.url band_url(band, format: :json)
end
