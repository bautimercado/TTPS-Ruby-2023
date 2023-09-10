### 20. Investigá qué métodos provee Ruby para:
#### Obtener la lista de ancestros (superclases) de una clase.
```ruby
Class MiClase
end

Class SubClase < MiClase
end

SubClase.ancestors
# => [SubClase, MiClase, Object, Kernel, BasicObject]
```
#### Conocer la lista de métodos de una clase.
```ruby
Class MiClase

def metodo_publico
end

private
def metodo_privado
end

protected
def metodo_protegido
end

MiClase.methods - Object.methods
# => [:metodo_publico]
```
- Para obtener los métodos privados o protegidos podemos usar `private_methods` y `protected_methods`
#### Conocer la lista de métodos de instancia de una clase.
```ruby
Class MiClase

def metodo_publico
end

private
def metodo_privado
end

protected
def metodo_protegido
end

MiClase.instance_methods(false)
# => [:metodo_publico, :metodo_protegido]
```
- `instance_methods(false)` sirve para que solo me imprima los métodos de instancia que sean de la clase (no incluye los de las superclases)
#### Conocer las variables de instancia de una clase.
```ruby
class MiClase
  def initialize
    @variable_instancia1 = 10
    @variable_instancia2 = "10"
  end
end

objeto = MiClase.new
objeto.instance_variables
# => [:@variable_instancia1, :@variable_instancia2]
```
#### Obtener el valor de una variable de instancia de un objeto (sin utilizar un método generado con attr_reader o similar) accediéndolo desde fuera de éste.
```ruby
class MiClase
  def initialize
    @variable_instancia1 = 10
    @variable_instancia2 = "10"
  end
end

objeto = MiClase.new
objeto.instance_variable_get(:@variable_instancia1)
# => 10
objeto.instance_variable_get(:@variable_instancia2)
# => "10"
```
#### Establecer el valor de una variable de instancia de un objeto (sin utilizar un método generado con attr_writer o similar) desde fuera de éste.
```ruby
objeto.instance_variable_set(:@variable_instancia1, 100)
objeto.instance_variable_set(:@variable_instancia2, "100")
```