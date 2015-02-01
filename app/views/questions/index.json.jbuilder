json.array!(@questions) do |question|
  json.extract! question, :id, :content, :type, :user_id
  json.url question_url(question, format: :json)
end
