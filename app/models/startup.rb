class Startup < ActiveRecord::Base
	validates :name, presence: true
	validates :angellist_url, presence: true
end
