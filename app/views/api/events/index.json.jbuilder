json.events @events do |event|
    json.media do
        json.url event.url
        json.caption event.caption
        json.credit event.credit
    end

    json.start_date do
        json.year event.year
        json.month event.month
        json.day event.day
        json.hour event.hour
        json.minute event.minute
    end
    json.text do
        json.headline event.headline
        json.text event.text
    end
    json.id event.id
end
