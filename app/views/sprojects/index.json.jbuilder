json.array!(@sprojects) do |sproject|
  json.extract! sproject, :id, :name, :description, :mode, :completed_on
  json.url sproject_url(sproject, format: :json)
end
