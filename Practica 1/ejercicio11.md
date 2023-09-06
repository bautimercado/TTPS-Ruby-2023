### 11. Tomando el ejercicio anterior como referencia, ¿en qué situaciones usarías los métodos send y public_send definidos en la clase Object? ¿Cuál es la principal diferencia entre esos dos métodos?
- Tanto _send_ como _public_send_ son métodos que sirven para invocar a otros métodos de forma dinámica.
  - send permite invocar cualquier método, sin importar si es público, protegido o privado. Por ejemplo:
    ```ruby
    class UnObjeto
      
      private def un_metodo_privado
        puts "Estoy en un metodo privado"
      end
    end
    
    un_objeto = UnObjeto.new
    un_objeto.send(:un_metodo_privado)
    ```
  - En cambio, public_send sólo permite llamar a métodos públicos. Por ejemplo:
    ```ruby
    class UnObjeto
      
      private def un_metodo_privado
        puts "Estoy en un metodo privado"
      end
    
      public def un_metodo_publico
        puts "Estoy en un metodo publico"
      end
    end
    
    un_objeto = UnObjeto.new
    
    un_objeto.send(:un_metodo_privado)
    un_objeto.send(:un_metodo_publico)
    
    un_objeto.public_send(:un_metodo_publico)
    un_objeto.public_send(:un_metodo_privado)  # NoMethodError
    ```