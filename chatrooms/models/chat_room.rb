class ChatRoom
belongs_to :user
belongs_to :user
has_many :messages, dependent: :destroy
end
