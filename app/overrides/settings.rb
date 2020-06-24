# These overrides add Google Chat configuration to the settings panel


# Grid menu integration
Deface::Override.new(
  :virtual_path  => "admin/settings/index",
  :insert_bottom => "[data-hook='admin_settings_grid']",
  :name          => "google_chat_grid_item",
  :text => "
    <%= settings_item('fa fa-google', 'google_chat', 'Enable Google Chat for your account', admin_google_chat_settings_path) %>
    "
  )

# Left menu integration
Deface::Override.new(
  :virtual_path  => "admin/settings/index",
  :insert_bottom => "[data-hook='admin_settings_menu']",
  :name          => "google_chat_settings_menu",
  :text => "<%= settings_menu_item('fa fa-google', 'google', admin_google_chat_settings_path) %>"
  )
