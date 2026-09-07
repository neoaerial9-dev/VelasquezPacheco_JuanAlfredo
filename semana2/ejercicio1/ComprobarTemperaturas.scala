// Autor: Juan Alfredo Velasquez Pacheco
// Código: U23203354
// Fecha de creación: 6/9/2026

import scala.io.StdIn.readInt

object ComprobarTemperaturas {
    def verificarTemp(temp: List[Int]): Unit = {
        // Ingresar el rango de temperaturas
        println("Ingrese temperatura minima:")
        val min = readInt()
        println("Ingrese temperatura maxima:")
        val max = readInt()
        val iter = temp.iterator
        var warn = false
        // Bucle para comprobar si se sale de rango
        while (iter.hasNext) {
            val temperatura = iter.next()
            if (temperatura < min || temperatura > max) {
                println(s"Temperatura fuera de rango: $temperatura")
                warn = true
            }
        }
        //Se imprime la alerta si sobrepasa el rango
        if (warn) {
            println("Alerta de estabilidad")
        }
    }

    def main(args: Array[String]): Unit = {
        val temperaturas = List(15, 22, 8, 35, 45, 18)
        verificarTemp(temperaturas)
    }
}