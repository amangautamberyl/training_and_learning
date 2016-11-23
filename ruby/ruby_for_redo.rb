class Forloop	
  for i in 0..5
   if i > 10 then
      puts "Value of local variable is #{i}"
      redo
   end
  end
end
