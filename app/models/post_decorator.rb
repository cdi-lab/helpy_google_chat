Post.class_eval do

  after_commit :ping_google_chat

#  protected

  def ping_google_chat
    return false unless self.kind == 'first' # Only ping for new topics
    # Actually fire the ping, split for private/public topics
    send_ping(self)
  end

  def send_ping(post)
    GoogleChatJob.perform_later post
  end
end
