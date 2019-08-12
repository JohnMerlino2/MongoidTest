Rails.application.routes.draw do
  root to: 'home#index'
  resources :calendars
  resources :shared_calendars, controller: 'calendars', type: 'SharedCalendar'
end
