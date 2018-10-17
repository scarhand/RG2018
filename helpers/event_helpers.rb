module EventHelpers
  def format_event_dates(event)
    (event.start_date..event.end_date).group_by(&:year).map do |year, dates|
      dates.group_by(&:month).map do |month, days|
        "#{Date::MONTHNAMES[month]} #{days.map(&:day).map(&:ordinalize).join_fancy(', ', ' & ')}"
      end.join_fancy(', ', ' & ') + " #{year}"
    end.join_fancy(', ', ' & ')
  end

  def format_activity_time(time)
    if time.is_a? Integer
      Time.at(time).strftime('%k:%M')
    else
      time
    end
  end
end
