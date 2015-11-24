class Ph < ActiveRecord::Base
  validates :reading, :mood, presence: true
end
