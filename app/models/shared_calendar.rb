class SharedCalendar < Calendar
  has_and_belongs_to_many :users, inverse_of: :shared_calendars, autosave: true
  belongs_to :owner, class_name: 'User', inverse_of: :my_calendar
end