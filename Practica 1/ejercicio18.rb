# 18. Escribí un nuevo script, que de manera similar al implementado en el punto anterior haga el
# saludo usando un nombre que se provea, pero que en lugar de solicitar que el nombre se ingrese
# por entrada estándar, éste se reciba como argumento del script.


if ARGV.length >= 1
  puts "¡Hola, #{ARGV[0]}!"
else
  puts "Error, no ha ingresado un argumento."
end