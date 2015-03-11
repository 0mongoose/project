json.array!(@milestones) do |milestone|
  json.extract! milestone, :id, :name, :difficult, :completed_on
  json.url milestone_url(milestone, format: :json)
end
