class FileCheck

 def test
  a=File.new("/home/beryl/Desktop/training_and_learning/a.txt","w+")
  a.puts "Hi this is a test file."
  puts a.read
  a.close

 end
end

ob=FileTest.new
ob.test


