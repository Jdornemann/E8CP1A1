
def readfilecount
lines = []

File.open('peliculas.txt','r'){|file| lines = file.readlines }

linescount = lines.count

puts "La cantidad de lineas de este archivo son: #{linescount}"

end

readfilecount