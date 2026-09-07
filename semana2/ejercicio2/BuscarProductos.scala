object BuscarProductos {
    def buscar(cata: Map[String, Double], prod: String): Unit = {
        val iter = cata.iterator
        var found = false
        // Bucle para comprobar e imprimir un producto segun el nombre
        // Se para al "obtener" un producto
        while (iter.hasNext && !found) {
            val (name, price) = iter.next()
            if (name == prod) {
                println(s"El precio de $name es $$${price}")
                found = true
            }
        }
        // Se imprime una advertencia al no encontar nada
        if (!found) {
            println("Producto no encontrado en el catalogo actual")
        }
    }

    def main(args: Array[String]): Unit = {
        val catalogo = Map(
            "Harina" -> 3500.0,
            "Manzana" -> 80.0,
            "Pelota" -> 150.0,
            "Podadora" -> 900.0
        )
        buscar(catalogo, "Podadora")
        buscar(catalogo, "Naranja")
    }
}