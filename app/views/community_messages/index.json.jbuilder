json.array!(@community_messages) do |community_message|
  json.extract! community_message, :id, :subject, :body, :start_date, :end_date
  json.url community_message_url(community_message, format: :json)
end
