class Clientinfo < ActiveRecord::Base
  has_many :business_events
  
  validates :title, presence: true,
                    length: { minimum: 5 }


end
