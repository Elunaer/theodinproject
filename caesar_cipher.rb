#This is asking whether the person would like to encode or decode a message
def encode_or_decode
    greeting = gets.chomp.downcase
    if greeting.empty?
        puts "Sorry, you haven't entered anything, please enter encode or decode"
        encode_or_decode
    elsif greeting === "encode" 
        puts "Ok, I can help you with that, what is it you'd like to encode today? Is it juicy? A love letter maybe? Please remember that my program will encode anything including punctuation and capital letters and spacing, so please ensure you keep this in mind"
        encode
    elsif greeting === "decode"
        puts "Sure, I can decode a message for you today, what's the message you would like to decode?"
        decode
    else
        puts "Sorry, you have entered the wrong information, please enter encode or decode. I would love to write something for you but 1I am not capable"
        encode_or_decode
    end
end

def encode
    message = parse_message
    puts "This is your encoded message, please use this wisely - we don't want anyone knowing your secrets!"
    puts encoded_message(message, shift_by)
    puts "And this was your original message, in case you need it for reference. Thanks for using this service today"
    puts message
    
end

def decode
    message = parse_message
    puts "This is your decoded message, wow isn't that cool!!"
    puts decoded_message(message, shift_by)
    puts "And this was your original message, in case you need it for reference. Thanks for using this service today"
    puts message
end

def parse_message
    message = gets.chomp
    if message.empty?
        puts "Please enter a message I cannot decode something that is empty!"
        parse_message
    end
    message
end

def encoded_message(message, shift_by)
    ascii = message.chars.map {|char| char.ord}
    shifted = ascii.map {|char| char + shift_by}
    shifted.map {|char| char.chr unless char.nil?}.join
end

def decoded_message(message, shift_by)
    ascii = message.chars.map {|char| char.ord}
    shifted = ascii.map {|char| char-shift_by}
    shifted.map {|char| char.chr unless char.nil?}.join
end

def shift_by 
    5
end

#initial question
puts "Hello and welcome to your trusty encoding and decoding machine, would you like to encode a message today or decode a message? Please type encode or decode!"
encode_or_decode






