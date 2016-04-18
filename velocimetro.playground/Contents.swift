//: velocimetro bugga

import UIKit

enum Velocidades : Int {
    case Apagado = 0 , VelocidadBaja = 20 , VelocidadMedia = 50 , VelocidadAlta = 120;
    init (velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        var leyenda = ""
        let actual = velocidad.rawValue
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
            leyenda = "Apagado"
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            leyenda = "Velocidad Baja"
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            leyenda = "Velocidad Media"
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            leyenda = "Velocidad Alta"
        }
        return (actual, leyenda)
    }

}

let coche = Auto()

for i in 1...20 {
    let carrera = coche.cambioDeVelocidad()
    print(carrera)
}
