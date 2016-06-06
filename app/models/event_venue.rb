class EventVenue < ActiveRecord::Base
  default_scope order('venue_name ASC')
  
  has_many :events
  
  validates :venue_name, :venue_address, :presence => true
  
  has_friendly_id :venue_name, :use_slug => true
end
