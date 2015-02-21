class MyDictionary < ActiveRecord::Base
  belongs_to :lesson
  validates :eng, presence: true
  validates :rus, presence: true
  validates :lesson_id, presence: true
end
