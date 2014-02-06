class Wine < ActiveRecord::Base
	# We need to specify a type for voting tallying purposes
	validates_inclusion_of :type, :in => ['red', 'white', 'sparkling'], :allow_nil => false
	validates :purchaser, presence: true
	validates :tasting_id, presence: true
end
