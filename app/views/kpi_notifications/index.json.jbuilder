json.array!(@kpi_notifications) do |kpi_notification|
  json.extract! kpi_notification, :id, :title, :value, :description
  json.url kpi_notification_url(kpi_notification, format: :json)
end
