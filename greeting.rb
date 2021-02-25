

def check_string(words)
    if /lab/ =~ words.downcase
        puts words
    else 
        puts "The word does not contain \"lab\""
    end
end
check_string("labratory")
check_string("experiment")
check_string("Pans Labyrinth")
check_string("eLaBorate")
check_string("polar bear")