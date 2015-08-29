require 'clockwork'
require 'mail'

include Clockwork




handler do |job|

	when 'test.job'
	



options = { :address              => "smtp.gmail.com",
            :port                 => 587,
            :domain               => "smtp.gmail.com",
            :user_name            => 'tksok2009@gmail.com',
            :password             => 'asdf2381',
            :authentication       => :plain,
            :enable_starttls_auto => true  }        
mail.charset = 'utf-8'
mail.from "tksok2009@gmail.com"
mail.to "tksok2009@gmail.com"
mail.subject "メールタイトル"
mail.body "メール本文"
mail.delivery_method(:smtp, options)
mail.deliver









	end

end

every(30.minutes, 'test.job')

#every(60.seconds, 'test.job')
#every(3.minutes, 'less.frequent.job')
#every(1.hour, 'hourly.job')
#every(1.day, 'midnight.job', :at => '00:00')
