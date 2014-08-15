json.array!(@add_quizid_to_quesitons) do |add_quizid_to_quesiton|
  json.extract! add_quizid_to_quesiton, :id, :quizid
  json.url add_quizid_to_quesiton_url(add_quizid_to_quesiton, format: :json)
end
