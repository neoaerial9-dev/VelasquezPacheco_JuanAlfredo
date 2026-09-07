// Autor: Juan Alfredo Velasquez Pacheco
// Código: U23203354
// Fecha de creación: 6/9/2026

object ReporteLibreria {
    case class Libro(titulo: String, autor: String, paginas: Int)

    def generarLecturas(libros: List[Libro]): Unit = {
        // Filtrar libros con menos de 200 pag
        val librosCortos = libros.filter(libro => libro.paginas < 200)
        // Colocar los titulos en mayuscula
        val titulosMayusculas = librosCortos.map(_.titulo.toUpperCase)
        // Agregar prefijo e imprimir
        val reporte = titulosMayusculas.map(titulo => s"LECTURA CORTA: $titulo")
        reporte.foreach(println)
        // Contar caracteres
        var total = 0
        for (titulo <- reporte) {
            total = total + titulo.length
        }
        println(s"Total de caracteres: $total")
    }

    def main(args: Array[String]): Unit = {
        val libros = List(
            Libro("Cocinar pastas", "Juan", 180),
            Libro("Mejores videojuegos 2000", "Ana", 350),
            Libro("Ejercicios de scala", "Luis", 150),
            Libro("Mejores Perifericos", "Carlos", 220)
        )
        generarLecturas(libros)
    }
}