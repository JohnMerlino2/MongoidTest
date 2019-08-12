class UserCalendar < Calendar
  has_and_belongs_to_many :users, inverse_of: :user_calendars, autosave: true
end