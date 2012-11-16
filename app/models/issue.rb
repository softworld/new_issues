class Issue < ActiveRecord::Base
  attr_accessible :description, :no_followers, :title

  validates :title, presence: :true , length: {minimum: 5}
  validates :description, presence: :true
  
  belongs_to :project

  after_create :add_to_timeline

  private

  def add_to_timeline
  	Timeline.create!({content: "An issue was created!", timelineable_id: id, timelineable_type: self.class.to_s})
  end

end
