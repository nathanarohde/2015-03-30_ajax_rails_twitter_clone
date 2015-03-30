class Tweet < ActiveRecord::Base
  validates :text, :presence => true
end
