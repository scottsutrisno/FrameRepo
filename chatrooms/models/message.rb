class Message
belongs_to :user
belongs_to :chat_room
end

class Message
  def timestamp
    created_at.strftime('%H:%M:%S %d %B %Y')
  end
end

class Message
  validates :body, presence: true, length: {minimum: 2, maximum: 1000}
end

class Message
  after_create_commit { MessageBroadcastJob.perform_later(self) }
end
