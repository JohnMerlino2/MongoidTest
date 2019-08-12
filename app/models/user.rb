class User
  include Mongoid::Document
  include Mongoid::Timestamps

  has_one :my_calendar, class_name: 'UserCalendar', foreign_key: 'owner_id'
  has_and_belongs_to_many :user_calendars, inverse_of: :users
  has_and_belongs_to_many :shared_calendars, inverse_of: :users
end