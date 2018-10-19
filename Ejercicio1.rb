
# Ejercicio 1: Escribiendo un archivo básico



def CreateFileContent(p1,p2)

    filename = 'index.html'
    inihtml = '<html><head></head><body>'
    endhtml = '</body></html>'
    if !File.exists?(filename)
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

def createFileContentArray(p1,p2,ventas,color)

    filename = 'index2.html'
    inihtml = '<html><head></head><body>'
    endhtml = '</ul></body></html>'
   
    if  ventas.empty?
            puts "No hay ventas para hoy"
            exit
    else
        

        modo = 'w'
        File.open(filename,modo) do |write|
            parrafo = '<p style= color:red >'
            body =  parrafo + p1 + '</p>' + parrafo + p2 +  '</p>'
            lista = '<ul>'
            body += lista
            ventas.each do |key,value| 
                body += "<li>Item: #{key} ; Ventas Totales: #{value} </li>"
              
            end
            write.puts inihtml + body + endhtml
            puts "Archivo fue creado"
        end
    end

end

CreateFileContent('soy un parrafo','soy otro parrafo1')


ventashoy = {mouse: 150100,teclado: 240200,monitor:10540200,tablet:3500200}
color = 'red'
createFileContentArray('soy un parrafo','soy otro parrafo1',ventashoy,color)



