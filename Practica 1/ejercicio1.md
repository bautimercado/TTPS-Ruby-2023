### 1. Investigá y probá en un intérprete de Ruby (irb, por ejemplo) cómo crear objetos de los siguientes tipos básicos, tanto mediante el uso de literales como utilizando el constructor new (cuando sea posible):
- Symbol
  ```ruby
  symbol = :this_is_a_symbol
  ```

- String
  ```ruby
  string = "this is a string"
  string = String.new("this is another string")
  ```

- Array
  ```ruby
  empty_array = []
  array = [1, 2, 3, "4", [], true]
  array = Array.new(3)    # Crea un arreglo de tamaño 3 vacio.
  array = Array[1, 2, 3, 4]
  array = Array.new(3) { |i| i * 2 }    # [0, 2, 4]
  ```

- Hash
  ```ruby
  hash = {"name" => "Joe", "age" => 23, "city" => "Jacobacci"}
  empty_hash = Hash.new
  hash = Hash["name", "Joe", "age", 23, "city", "Jacobacci"]
  
  ```