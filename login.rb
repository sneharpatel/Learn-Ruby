=begin
def user_id(id)
  if (id.length>=7)
    puts "Valid user ID."
  else
    puts "Invalid user ID length."
  end
end
=end

def passWord(pw)
  if (pw.length>=7)
    if (pw =~ /[A-Z]/) and (pw =~ /[a-z]/) and (pw =~ /[0-9]/) and (pw =~ /[!,@,#,$,%,^,&,*,(,),_,+,=]/)
      puts "Valid password."
    else
      puts "Invalid password."
    end
  else
    puts "Invalid password length."
  end
end


#puts "Enter user id:"
#u = gets.to_s
puts "Enter password:"
p = gets.to_s

#user_id(u)
passWord(p)