
puts ("Programa de multiplicacion y sumas de matrices")
puts ("Introduzca el numero de filas y columnas que quiere que tengan las matrices (deben ser cuadras)")

flujoentrada = File.new("matrices.txt", "r")
num = flujoentrada.gets

n = num.to_i - 1

#creamos las matrices 
a = Array.new(num.to_i){Array.new(num.to_i)}
b = Array.new(num.to_i){Array.new(num.to_i)}

sum = Array.new(num.to_i){Array.new(num.to_i)}
mult = Array.new(num.to_i){Array.new(num.to_i)}

#llenamos la matriz A
for i in (0..n.to_i)
	for j in (0..n.to_i)
		a[i][j] = flujoentrada.gets.to_i
	end
end

#llenamos la matriz B
for i in (0..n.to_i)
	for j in (0..n.to_i)
		b[i][j] = flujoentrada.gets.to_i
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


# Suma
for i in (0..n.to_i)
	for j in (0..n.to_i)
		sum[i][j] = a[i][j] + b[i][j]
	end
end

# Imprimir Suma
puts "\n Matriz suma: \n"
for i in (0..n.to_i)
	print " "
	for j in (0..n.to_i)
		print sum[i][j]
		print " "
	end
puts "\n"
end


# Multiplicación

for i in (0..n.to_i)
	for j in (0..n.to_i)
			mult[i][j] = 0
		for k in (0..n.to_i)
			mult[i][j] += a[i][k] * b[k][j]
		end
		
	end
	
end


# Imprimir Multiplicacion
puts "\n Multiplicacion: \n"
for i in (0..n.to_i)
	print " "
	for j in (0..n.to_i)
		print mult[i][j]
		print " "
	end
puts "\n"
end



