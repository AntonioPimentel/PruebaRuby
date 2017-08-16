
def contar_lineas(archivo)
	file = File.open(archivo, "r")
	data = file.readlines
	file.close
	data.count
end
# #Si el usuario presiona la opción 3 se debe mostrar los
# nombres de los alumnos y sus promedios
# Se debe crear un método (fuera de la clase
# alumno) que abra el archivo y devuelva un
# arreglo de objetos alumnos. [1 punto]
# Se debe llamar al método y luego iterar el
# arreglo devuelto mostrando el nombre y el
# promedio [1 punto]
def arreglo_alumnos()
	file = File.open("alumnos.csv", "r")
	return data = file.readlines
	file.close

end

class Alumno
	attr_accessor :nombres, :inasistencias
	def initialize(nombres, nota1, nota2, nota3, inasistencias = 0)
		@nombres = nombres
		@nota1 = nota1.to_i
		@nota2 = nota2.to_i
		@nota3 = nota3.to_i
		@inasistencias = inasistencias	
	end
	def promedio_notas()
		(@nota1+@nota2+@nota3)/3
	end

end

continuar = true
while(continuar)
	puts "Ingrese una opción: "
	opcion = gets.chomp.to_i

	if opcion == 1
		continuar = false
		puts "Un gusto hasta luego"
	end

	if opcion == 2
		puts "La cantidad de alumnos en el documento es de #{contar_lineas('alumnos.csv')}"
		
	end
	
	if opcion == 3
		arr_objetos = []
		arreglo_alumnos.each do |lineas|
			arr_linea = lineas.chomp.split(", ")#acá queda asi["Juan", "9", "2", "5"]["Felipe", "10", "2", "A"][...]...
			arr_objetos << Alumno.new(arr_linea[0], arr_linea[1], arr_linea[2], arr_linea[3])#instancio las clases y las almaceno

		end
		promedio = []
		arr_objetos.each do |lineas|
			promedio << lineas.promedio_notas
		end
		print "Los promedios son: #{arr_objetos[0].nombres} - #{promedio[0]}, #{arr_objetos[1].nombres} - #{promedio[1]}, #{arr_objetos[2].nombres} - #{promedio[2]}, #{arr_objetos[3].nombres} - #{promedio[3]}"
		
	end

	if opcion == 4
		file = File.open('promedios.txt', "w")
		data = file.readlines
		file.close
		arr_objetos = []
		data.each do |lineas|
			arr_linea = lineas.chomp.split(", ")#acá queda asi["Juan", "9", "2", "5"]["Felipe", "10", "2", "A"][...]...
			arr_objetos << Alumno.new(arr_linea[0], arr_linea[1], arr_linea[2], arr_linea[3])#instancio las clases y las almaceno

		end
		promedio = []
		arr_objetos.each do |lineas|
			promedio << lineas.promedio_notas
			if lineas == A
				
			end
		end
	end

	if opcion == 5
		arr_objetos = []
		arreglo_alumnos.each do |lineas|
			arr_linea = lineas.chomp.split(", ")#acá queda asi["Juan", "9", "2", "5"]["Felipe", "10", "2", "A"][...]...
			arr_objetos << Alumno.new(arr_linea[0], arr_linea[1], arr_linea[2], arr_linea[3])#instancio las clases y las almaceno

		end
		promedio = []
		arr_objetos.each do |lineas|
			promedio << lineas.promedio_notas
		
			if promedio>6
				print "El promedio de #{arr_objetos[0].nombres es }"
			
			end
		end
	end

	if opcion < 1 || opcion > 5 || opcion.to_i == 0
	puts "Opción no valida, favor intente nuevamente"
	
	end
end#END WHILE
