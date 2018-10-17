
# Ejercicio 1: Escribiendo un archivo básico



def CreateFileContent(p1,p2)

    filename = 'index.html'
    inihtml = '<html><head></head><body>'
    endhtml = '</body></html>'
    if File.exists?(filename)
       puts "Archivo ya existe"
    else
        modo = 'w'
        File.open(filename,modo) do |write|

            body =  '<p>' + p1 + '</p>' + '<p>' + p2 +  '</p>'
            
            write.puts inihtml + body + endhtml
            puts "Archivo fue creado"
        end
    end
   


end

CreateFileContent('soy un parrafo','soy otro parrafo')


