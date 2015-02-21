class Author < ActiveRecord::Base
  
  validates :first_name, :last_name, length: {in: 4..20}, presence: true
  validates :age, numericality: true
  has_many :posts, dependent: :destroy

end
