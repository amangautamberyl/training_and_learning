class Retrytest

	def test
	  for i in 1..5
        retry if  i > 2
        puts "Value of local variable is #{i}"
      end
	end
end

ob=Retrytest.new
ob.test