//
//  pantalla_agenda.swift
//  agenda_shufle
//
//  Created by alumno on 2/26/25.
//


import SwiftUI

var contactos = [
    ContactoAgenda(nombre: "Juan", telefono: "12345"),
    ContactoAgenda(nombre: "Juan", telefono: "12345"),
    ContactoAgenda(nombre: "Juan", telefono: "12345"),
    ContactoAgenda(nombre: "Juan", telefono: "12345"),
    ContactoAgenda(nombre: "Juan", telefono: "12345"),
    ContactoAgenda(nombre: "Juan", telefono: "12345")
]

struct pantalla_agenda: View {
    var body: some View {
        List{
            VStack {
                ForEach(contactos){ contacto in //bucle que craga 25 veces la vista
                    Text("\(contacto.nombre)")
                    ContactoPrevista()
                }
               
            }
            .background(Color.cyan)
        }
        
        
    }
}

#Preview {
    pantalla_agenda()
}
