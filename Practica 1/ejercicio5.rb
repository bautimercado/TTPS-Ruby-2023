# 5. Escribí una función llamada reemplazar que, dado un String que recibe como parámetro,
# busque y reemplace en éste cualquier ocurrencia de "{" por "do\n" y cualquier ocurrencia de
# "}" por "\nend", de modo que convierta los bloques escritos con llaves por bloques multilínea
# con do y end.

def reemplazar(string)
    string.gsub!('{', 'do\n')
    string.gsub!('}', '\nend')
end

puts reemplazar("3.times { |i| puts i }")