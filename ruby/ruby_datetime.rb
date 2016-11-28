class Datetime
  def datetime
    time1 = Time.new
    puts "Current time using time.new function is: #{time1}"
    time2 = Time.now
    puts "Current time using time.now function is: #{time2}"
    puts "Current year is :  #{time2.year.inspect}"
    puts "Current month is :  #{time2.month.inspect}"
    puts "Current day is :  #{time2.day.inspect}"
    puts "Current weekday is :  #{time2.wday.inspect}" 		# 0-sunday, 1-monday......7-saturday
	puts "Current day of year is :  #{time2.yday.inspect}"	#1-365/366
	puts "Current hour is :  #{time2.hour.inspect}"
	puts "Current minute is :  #{time2.min.inspect}"
	puts "Current second is :  #{time2.sec.inspect}"
	puts "Current microsecond is :  #{time2.usec.inspect}"
	puts "Current zone is :  #{time2.zone.inspect}"
  end
end

ob=Datetime.new
ob.datetime