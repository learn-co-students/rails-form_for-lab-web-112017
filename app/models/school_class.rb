class SchoolClass < ActiveRecord::Base
  validates :title, presence: true
  validates :room_number, presence: true
end
