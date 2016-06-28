CommunityCalendar = Google::Calendar.new(client_id: Rails.application.secrets.google_calendar_client_id,
                                         client_secret: Rails.application.secrets.google_calendar_client_secret,
                                         calendar: Rails.application.secrets.google_calendar_id)
