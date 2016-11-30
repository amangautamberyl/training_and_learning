
class Redotest

	def test
	  for i in 1..5
        if  i < 2
          puts "Value of local variable is #{i}"
          redo
        end
      end
	end
end

ob=Redotest.new
ob.test