class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image
  
  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end

private

def message_params
  params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
end