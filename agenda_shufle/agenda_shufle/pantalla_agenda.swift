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
            
            .frame(alignment: Alignment.center)
            .padding(10)
            .background(Color.cyan)
        }
        .background(Color.green)
        
        HStack(alignment: VerticalAlignment.center, spacing: 25)
        {
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundColor(.red)
                Rectangle()
                    .frame(width: 55, height: 65)
                    .foregroundColor(.blue)
                Image(systemName: "plus")
                    .background(Color.white)
                    //.offset(x: 0, y: -20) posicion 
            }
            .padding(15)
            .onTapGesture {
                print("Falta implememyar esta parte")
            }
            
            Spacer()
            
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundColor(.red)
                Rectangle()
                    .frame(width: 55, height: 65)
                    .foregroundColor(.blue)
                Image(systemName: "shuffle")
                    .background(Color.white)
            }
            .padding(15)
            .onTapGesture {
                print("intente para lanzar llamada")
            }
            
        }
        
    }
}

#Preview {
    pantalla_agenda()
}
