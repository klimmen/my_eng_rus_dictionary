class Lesson < ActiveRecord::Base
  has_many :my_dictionaries, dependent: :destroy
  validates :number, presence: true
  validates :number, numericality: {only_integer: true, greater_thanor_equal: 0}
  validates :my_dictionaries_count, numericality: {only_integer: true, greater_thanor_equal: 0}
  validates_associated :my_dictionaries
end
