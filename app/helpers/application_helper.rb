module ApplicationHelper

	def time_ago time
	  return time_ago_in_words(time).gsub(/about|less than|almost|over/, '').strip
	end

end
