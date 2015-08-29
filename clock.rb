require 'clockwork'


include Clockwork




handler do |job|

	when 'test.job'
	
		putd "test"

	end

end

every(10.minutes, 'test.job')

#every(60.seconds, 'test.job')
#every(3.minutes, 'less.frequent.job')
#every(1.hour, 'hourly.job')
#every(1.day, 'midnight.job', :at => '00:00')
