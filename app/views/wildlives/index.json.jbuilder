json.array!(@wildlives) do |wildlife|
  json.extract! wildlife, :id, :name, :size, :copies, :cost, :image
  json.url wildlife_url(wildlife, format: :json)
end
