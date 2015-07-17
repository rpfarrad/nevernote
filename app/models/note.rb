class Note < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: { maximum: 200 }
  default_scope { order('updated_at DESC') }
  scope :ordered, -> { order('created_at DESC') }
end
