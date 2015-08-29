require 'clockwork'
include Clockwork


every(15.second, '1.second.job') do
  puts "Running job"
end

#every(60.seconds, 'test.job')
#every(3.minutes, 'less.frequent.job')
#every(1.hour, 'hourly.job')
#every(1.day, 'midnight.job', :at => '00:00')
