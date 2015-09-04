require 'open-uri'
require 'clockwork'

include Clockwork

every(1.day, 'feed and ping.job') do

	open( ENV['testurl1']) {
	}

	open(ENV['testurl2']) {
	}


end

#every(60.seconds, 'test.job')
#every(3.minutes, 'less.frequent.job')
#every(1.hour, 'hourly.job')
#every(1.day, 'midnight.job', :at => '00:00')
