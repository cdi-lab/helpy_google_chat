require "http"
class GoogleChatJob < ActiveJob::Base

  def perform(post)
    # Assemble message
    topic_url = "#{AppSettings['settings.site_url']}#{Rails.application.routes.url_helpers.admin_topic_path(post.topic.id)}"
    title = "New Topic started by #{post.topic.user.name}"
    message_headers = {'Content-Type' => 'application/json; charset=UTF-8'}
    message = {
      text: "#{title} \n #{topic_url} \n #{post.body}"
    }

    # Send Ping
    HTTP.post(AppSettings['google_chat.post_url'], headers: message_headers, body: message.to_json)
  end
end
