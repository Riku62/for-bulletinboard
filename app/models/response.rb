class Response < ApplicationRecord
  validates :content, presence: true
  validates :my_thread_id, presence: true
  belongs_to :my_thread
end
