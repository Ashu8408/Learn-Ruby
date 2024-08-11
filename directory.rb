#------------------------------------------------------------------------------------------------------------------------
puts "\n\nDIRECTORY & EXCEPTIONS \n"

puts Dir.pwd        #shows the directory name you are on
# Dir.mkdir 'new-folder'      # creates a new folder with name "folderhere"
puts Dir.exist? 'new-folder'

#------------------------------------------------------------------------------------------------------------------------
puts "\nEXCEPTIONS\n"
begin 
    puts 'begin'
    puts 3/2
    puts 3-2
    puts 9*2
    puts 4/0
rescue 
    puts 'error cached'
else 
    puts 'no error detected'
ensure          # default line which runs always
    puts 'always run irrespective of above'
end

