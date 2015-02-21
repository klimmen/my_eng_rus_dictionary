class Lesson < ActiveRecord::Base
  has_many :my_dictionaries
  validates :number, presence: true
  validates :number, numericality: {only_integer: true, greater_thanor_equal: 0}
  validates :counter, numericality: {only_integer: true, greater_thanor_equal: 0}
  validates_associated :my_dictionaries
end
