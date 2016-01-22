json.array!(@chairs) do |chair|
  json.extract! chair, :id, :name, :hours, :desc
  json.url chair_url(chair, format: :json)
end
