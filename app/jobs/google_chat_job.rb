require "http"
class GoogleChatJob < ActiveJob::Base

  def perform(post)
    # Assemble message
    url = "#{AppSettings['settings.site_url']}#{Rails.application.routes.url_helpers.admin_topic_path(post.topic.id)}"
    title = "New Topic started by #{post.topic.user.name}"
    message_headers = {'Content-Type' => 'application/json; charset=UTF-8'}
    message = {
      text: "#{title} \n #{post.body}"
    }

    # Send Ping
    HTTP.post(url, headers: message_headers, body: message.to_json)
  end
end
