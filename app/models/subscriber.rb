class Subscriber < ActiveRecord::Base
  attr_accessible :email, :travel, :zip_code
  
  validates_presence_of :email, :message => "Oh no, looks like you forgot something"
  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, :message => "Looks like something isn't right with your email address"
  
  validates_presence_of :zip_code, :message => "Oh no, looks like you forgot something"
  validates_format_of :zip_code, :with => /(^([0-9]{5})(?:[-\s]*([0-9]{4}))?$)|(^([A-Z][0-9][A-Z])\s*([0-9][A-Z][0-9])$)/, :message => "Looks like something isn't right with your postal code"
end
