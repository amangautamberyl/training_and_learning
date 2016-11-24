module Hash_def
  HASH1 = Hash["Name"=>"Aman Gautam", "Company" => "Beryl"]
end

class Hashing
  include Hash_def   
  
  def basic
    puts "#{HASH1["Name"]}"	
  end

end

ob = Hashing.new
ob.basic