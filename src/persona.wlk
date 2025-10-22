import gimnasia.*

class Persona {

    var property rutinas = []
    var property peso 

    method pesoPerdido(rutina, tiempo) {
        return rutina.caloriasQuemadas(tiempo) / self.kilosPorCaloria()
      
    }

    method aplicaLaRutina(rutina, tiempo) {
        peso -= self.pesoPerdido(rutina, tiempo)
      
    }

    method kilosPorCaloria() 

}   

class PersonasSedentarias inherits Persona {

    var property kilosPorCaloria = 7000

    override method aplicaLaRutina(rutina, tiempo) {
        if (peso > 50)
            {super(rutina, tiempo)}
    }
}

class PersonasAtletas inherits Persona{

    var property kilosPorCaloria = 8000
    var property tiempoQueEjercita = 90

    override method pesoPerdido(rutina, tiempo) {
        return rutina.caloriasQuemadas(tiempoQueEjercita) / kilosPorCaloria - 1 
    }

    override method aplicaLaRutina(rutina, tiempo) {
        if (self.pesoPerdido(rutina, tiempo) > 10000)
            {peso -= self.pesoPerdido(rutina, tiempo)}
    }

}