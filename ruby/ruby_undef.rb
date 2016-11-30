module M
	def check1
		puts "hello"
	end
	def check2
		puts "world"
	end
	def check3
		puts "indians"
	end
end

class Redotest
extend M
def check2
  puts "universe"
end
undef check3

	# def test
	#   puts "the value is:" M.check1
	#   # M.check2
	# end
end

ob=Redotest.new
ob.check1
# ob=Redotest.new
# ob.test
Redotest.check2
# ob.check1
Redotest.check2
ob.check3