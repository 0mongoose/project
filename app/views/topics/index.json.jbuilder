json.array!(@topics) do |topic|
  json.extract! topic, :id, :name, :about
  json.url topic_url(topic, format: :json)
end
