class MyDictionary < ActiveRecord::Base
  belongs_to :lesson, dependent: :destroy, counter_cache: true
  validates :eng, presence: true
  validates :rus, presence: true
  validates :lesson_id, presence: true
end
