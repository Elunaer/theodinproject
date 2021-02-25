#user to enter start to start stopwatch
puts "Type start to begin stopwatch then type end to stop"

start_stopwatch = gets.chomp
if start_stopwatch == "start"
  puts "Stopwatch has been started, your time starts now, don't forget to type end to stop"
  start_time = Time.now
else 
  puts "Error, please type start"
end

stop_stopwatch = gets.chomp
if stop_stopwatch == "end"
  puts "Your stopwatch has ended, your elapsed time is"
  puts Time.now - start_time
else 
  puts "Error, please type end to stop"
end


# current time minus start time


#starts from zero , enter start, time incrementing by seconds/mins/hours , command for stop, if anything other than start or end is entered it return an error
#when you type end the console will return the value of how many mins/seconds/hours it's been since start