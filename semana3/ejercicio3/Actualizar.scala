// Autor: Juan Alfredo Velasquez Pacheco
// Código: U23203354
// Fecha de creación: 6/9/2026

object Actualizar {
    def actualizarProductos(products: Map[String, Double]): Unit = {
        // Filtrar productos mayores a 50
        val filtered = products.filter { case (_, precio) => precio > 50.0 }
        // Aplicar descuento del 20%
        val rebajados = filtered.map {
            case (nombre, precio) => (nombre, precio * 0.80)
        }
        // Transformar en lista de strings
        val lista = rebajados.map {
            case (nombre, precio) =>
            f"Producto: $nombre | Precio Rebajado: $$${precio}%.2f"
        }.toList
        println("Productos Actualizados")
        lista.foreach(println)
        // Calcular promedio
        val promedio =
            if (rebajados.nonEmpty) rebajados.values.sum / rebajados.size
            else 0.0
        println(f"Precio promedio: $$${promedio}%.2f")
    }

    def main(args: Array[String]): Unit = {
        val productos = Map(
            "Laptop" -> 3500.0,
            "Mouse" -> 45.0,
            "Teclado" -> 90.0,
            "Monitor" -> 850.0,
            "USB" -> 25.0
        )
        actualizarProductos(productos)
    }
}