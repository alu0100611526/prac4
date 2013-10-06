
puts ("Programa de multiplicacion y sumas de matrices")
puts ("Introduzca el numero de filas y columnas que quiere que tengan las matrices (deben ser cuadras)")
num = gets.chomp
	
n = num.to_i - 1

#creamos las matrices 
a = Array.new(num.to_i){Array.new(num.to_i)}
b = Array.new(num.to_i){Array.new(num.to_i)}

sum = Array.new(num.to_i){Array.new(num.to_i)}
mult = Array.new(num.to_i){Array.new(num.to_i)}

#llenamos las matrices con numeros aleatorios del 0 al 9
for i in (0..n.to_i)
	for j in (0..n.to_i)
		a[i][j] = rand(10)
		b[i][j] = rand(10)
	end
end

# Imprimir a
puts "\n matriz 1:\n"
for i in (0...num.to_i)
	print " "
	for j in (0..n.to_i)
		print a[i][j]
		print " "
	end
puts "\n"
end

# Imprimir b
puts "\n matriz 2:\n"
for i in (0..n.to_i)
	print " "
	for j in (0..n.to_i)
		print b[i][j]
		print " "
	end
puts "\n"
end




