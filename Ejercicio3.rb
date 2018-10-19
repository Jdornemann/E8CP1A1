

def readfilewords(search)

    lines = []

    File.open('peliculas.txt','r'){|file| lines = file.readlines}

    countword = 0
    countrepeat=0
    lines.each do |line|
    
        word = line.split(' ').map(&:to_s)
        
        countword += word.count
      
        word.each do |x|
          
          
        countrepeat += 1 if x.upcase.include?(search.upcase) 
        end
    end
   

    puts "Este archivo tiene #{countword} palabra(s)"
    puts "Hay #{countrepeat} coincidencia(s) con la busqueda: #{search}"
end


puts 'Ingrese una palabra a buscar: '
word = gets.chomp
readfilewords(word)
