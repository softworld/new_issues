class Issue < ActiveRecord::Base
  attr_accessible :description, :no_followers, :title

  validates :title, presence: :true , length: {minimum: 5}
  validates :description, presence: :true
  
  belongs_to :project
end
