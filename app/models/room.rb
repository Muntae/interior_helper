class Room < ActiveRecord::Base
  has_many :furnitures, dependent: :destroy
  belongs_to :user
  
  validates :title, presence: true
  validates :width, presence: true, numericality: { greater_than: 99, less_than: 801}
  validates :height, presence: true, numericality: { greater_than: 99, less_than: 501}

end
