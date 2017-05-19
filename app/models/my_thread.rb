class MyThread < ApplicationRecord
  validates :title, presence: true
  has_many :responses, dependent: :destroy

end
