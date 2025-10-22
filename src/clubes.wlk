import persona.*
import gimnasia.*

class Club {

    var property predios = []

    method mejorPredioPara(unaPersona) {
        return predios.max({unPredio => unPredio.caloriasQueGasta(unaPersona)})
    }

    method predioTranqui(unaPersona) {
        return predios.filter({unPredio => unPredio.rutinaMenosDe500Para(unaPersona)})      
    }

    method predioExigente(unaPersona) {
        return predios.map({unPredio => unPredio.rutinaMasExigente(unaPersona)})
      
    }
}

class Predio {

    var property rutinas = []

    method caloriasQueGasta(persona) {
        rutinas.sum({unaRutina => unaRutina.caloriasQuemadas(persona.tiempo())})
    }

    method rutinaMenosDe500Para(persona) {
        rutinas.any({unaRutina => unaRutina.caloriasQuemadas(persona.tiempo()) < 500})
    }

    method rutinaMasExigente(persona) {
        rutinas.max({unaRutina => unaRutina.caloriasQuemadas(persona.tiempo())})
    }

}