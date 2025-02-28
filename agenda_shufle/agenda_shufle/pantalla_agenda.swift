//
//  pantalla_agenda.swift
//  agenda_shufle
//
//  Created by alumno on 2/26/25.
//


import SwiftUI

var contactos = [
    ContactoAgenda(nombre: "Juan", telefono: "12345"),
    ContactoAgenda(nombre: "kaina", telefono: "12345"),
    ContactoAgenda(nombre: "Juanaaaa", telefono: "12345"),
    ContactoAgenda(nombre: "Juani", telefono: "12345"),
    ContactoAgenda(nombre: "Juanchoooo", telefono: "12345"),
    ContactoAgenda(nombre: "Juaco", telefono: "12345"),
    ContactoAgenda(nombre: "Juani", telefono: "12345"),
    ContactoAgenda(nombre: "Juancho", telefono: "12345")
]

struct pantalla_agenda: View {
    
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.height
    
    var body: some View {
        ScrollView{
            VStack(spacing:10) {
                ForEach(contactos){ contacto in //bucle que craga 25 veces la vista
                    //Text("\(contacto.nombre)")
                    ContactoPrevista(contacto_a_mostrar: contacto, al_pulsar: {print("Te envia saludas \(contacto.nombre) desde pantalla agenda")})
                }
               
            }
            .background(Color.cyan)
            .frame(
                width: largo_de_pantalla, alignment: Alignment.center)
        }
        .background(Color.green)
        
    }
}

#Preview {
    pantalla_agenda()
}
