class FileCreation

  def test
    a = File.new("/home/beryl/Desktop/training_and_learning/ruby/file1.txt", "a+")
    @input = gets
    a.puts "#{@input}"
    a.close
  end
end

ob=FileCreation.new
ob.test