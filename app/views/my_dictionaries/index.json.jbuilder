json.array!(@my_dictionaries) do |my_dictionary|
  json.extract! my_dictionary, :id, :eng, :rus
  json.url my_dictionary_url(my_dictionary, format: :json)
end
