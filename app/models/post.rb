class Post < ActiveRecord::Base
#	attr_accessor :title, :body

#	def initialize(hash={})
#		@title=hash[:title]
#		@body=hash[:body]
#	end
	def self.allsortbydate
		self.all.sort_by{|post| -post[:id]}
	end

end
