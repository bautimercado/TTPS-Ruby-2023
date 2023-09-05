# 8. Modificá la función anterior para que sólo considere como aparición del segundo String cuando se trate de 
# palabras completas.

def contar(string, substring)
    # La expresión \b indica límites de palabras.
    return string.scan(/\b#{Regexp.escape(substring)}\b/i).length
    
end

puts contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")