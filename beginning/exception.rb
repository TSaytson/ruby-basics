# def method_exception
#   raise TypeError, 'You are doing something wrong'
# end

# method_exception()

begin
  puts 'This is like a try'
  raise TypeError, 'This is the Exception message'
  puts 'This instruction is not shown'
rescue Exception => e
  print e.message + "\n"
  print e.backtrace
  print "\n"
end

begin 
  file = File.open('doesntExists')
  if file.exists?
    print "Exists \n"
  else
    raise TypeError, 'Exception Message'
  end
rescue Exception => e
  print e.message
  #retry
end