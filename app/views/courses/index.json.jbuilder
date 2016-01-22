json.array!(@courses) do |course|
  json.extract! course, :id, :name, :min, :max
  json.url course_url(course, format: :json)
end
