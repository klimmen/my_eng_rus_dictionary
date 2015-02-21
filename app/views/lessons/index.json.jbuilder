json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :number
  json.url lesson_url(lesson, format: :json)
end
