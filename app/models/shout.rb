class Shout < ApplicationRecord
  belongs_to :user
  belongs_to :content, polymorphic: :true

  validates :body, presence: true, length: { in: 1...44 }
  validates :user, presence: true

  default_scope { order(created_at: :desc) }

  delegate :username, to: :user
end
