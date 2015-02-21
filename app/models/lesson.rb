class Lesson < ActiveRecord::Base
  has_many :my_dictionaries
  validates :number, presence: true
  validates :number, :numericality => { :only_integer => true }
end
