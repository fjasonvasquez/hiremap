class Startup < ActiveRecord::Base
	belongs_to :startup
	validates :name, presence: true
	validates :angellist_url, presence: true
end
