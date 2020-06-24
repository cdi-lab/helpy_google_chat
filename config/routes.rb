Rails.application.routes.draw do

  namespace :admin do
    get 'settings/google_chat' => 'settings#google_chat', as: :google_chat_settings
  end

end
