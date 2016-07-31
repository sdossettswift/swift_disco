json.events @events do |event|

  json.media {
    json.url event.url
    json.caption event.caption
    json.credit event.credit
  }

  json.start_date{
    json.year event.year
    json.month event.month
    json.day event.day
    json.hour event.hour
    json.minute event.minute
  }
  json.text {
    json.headline event.headline
    json.text event.text

  }
  json.id event.id

end
