json.array!(@questions) do |question|
  json.extract! question, :id, :quest, :a, :b, :c, :d, :answer
  json.url question_url(question, format: :json)
end
