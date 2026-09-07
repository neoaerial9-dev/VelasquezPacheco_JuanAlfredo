object VerificarCantidad {
    def verificar(cantidades: List[Int], umbral: Int): Unit = {
        val iter = cantidades.iterator
        // Bucle para comprobar que no se ha alcanzado el umbral
        while (iter.hasNext) {
            val cantidad = iter.next()
            if (cantidad < umbral) {
                println(s"Cantidad $cantidad: requiere reposición inmediata")
            }
        }
    }

    def main(args: Array[String]): Unit = {
        val cantidades = List(15, 3, 20, 7, 12, 2)
        verificar(cantidades, 10)
    }
}