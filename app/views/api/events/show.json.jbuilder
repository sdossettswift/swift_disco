json.event do
  json.id @event.id
  json.name @event.name
  json.url api_event_url(id: @event.id)
  json.photo_url @event.photo_url
  json.user do
    json.id @event.user.id
    json.username @event.user.username
  end
end
