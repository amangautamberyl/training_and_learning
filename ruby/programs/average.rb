class Average
	def average
		puts "Enter the number of numbers you want to get average:"
		@n=Integer(gets)
		@a=Array[]
		@sum=0
		puts "Enter #{@n} numbers: \n"
		for i in 1..@n
			@a[i] =Integer(gets)
			@sum = @sum+@a[i]
		end
		@aver=@sum/@n
		puts "The average of #{@n} numbers is #{@aver}"
	end
end
ob=Average.new
ob.average