class FileOpen

  def test
    a= File.open("/home/beryl/Desktop/training_and_learning/ruby/file1.txt", "a+") 
    puts "\n Enter the data you want to add in file:-"
    @append = gets
    a.puts "#{@append}"
    puts "The content of the file now is:-"
    a= File.open("/home/beryl/Desktop/training_and_learning/ruby/file1.txt", "r")
    puts a.readlines
  end
end

ob=FileOpen.new
ob.test