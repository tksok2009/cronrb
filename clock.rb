﻿require 'open-uri'

require 'clockwork'
include Clockwork


every(5.hour, '1.second.job') do
  #puts "Running job"

	open("http://www.toysking.jp/auc/rss2c.php") {
	}

end

#every(60.seconds, 'test.job')
#every(3.minutes, 'less.frequent.job')
#every(1.hour, 'hourly.job')
#every(1.day, 'midnight.job', :at => '00:00')
