object LimpiarEtiquetas {
    def limpiarEtiquetas(hash: Set[String]): Unit = {
        /*
        * Se eliminan espacios
        * Se pone en minusculas
        * Se filtran las mayores a tres caract.
        * Se agrega # adelante y se separa por comas
        */
        val filtro = hash
        .map(_.trim)
        .map(_.toLowerCase)
        .filter(_.length >= 3)
        val cadena = filtro.map("#" + _).mkString(", ")
        println("Etiquetas procesadas:")
        println(cadena)
    }

    def main(args: Array[String]): Unit = {
        val etiquetas = Set(
            " Scala ",
            "scala",
            " JAVA",
            "AI",
            " Kotlin ",
            "SCALA",
            "  IA "
        )
        limpiarEtiquetas(etiquetas)
    }
}