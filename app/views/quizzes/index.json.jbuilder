json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :name, :description, :text
  json.url quiz_url(quiz, format: :json)
end
