class MyThread < ApplicationRecord
  validates :title, presence: true
  has_many :responses, dependent: :destroy
  #dependent: :destroyをつけることでthreadを削除した時にそれに関するresponseも削除する
end
