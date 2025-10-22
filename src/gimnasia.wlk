class Rutina {
    method intensidad() 

    method descanso(tiempo) 

    method caloriasQuemadas(tiempo) {
        return (100 * (tiempo - self.descanso(tiempo)) * self.intensidad())

    }

}

class Running inherits Rutina {

    var property intensidad 

    override method descanso(tiempo) {
        if (tiempo > 20)
            {return 5}
        else {return 2}
      
    }
}

class Maraton inherits Running {
    
    override method caloriasQuemadas(tiempo) {
        return (2 * super(tiempo))
    
    }

}

class Remo inherits Rutina {
    
    var property intensidad = 1.3

    override method descanso(tiempo) {
        return tiempo / 5
    }

}

class RemoDeCompeticion inherits Remo {

    override method intensidad() = 1.7

    override method descanso(tiempo) {
        return (tiempo / 5) - 3.max(2)

    }
}