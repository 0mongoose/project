json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :result, :no_of_questions
  json.url quiz_url(quiz, format: :json)
end
