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
    
]

struct pantalla_agenda: View {
    
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.height
    
    @State var mostrar_pantalla_agregar_contacto: Bool = false
    
    @State var contactos_actuales: [ContactoAgenda] = [
        ContactoAgenda(nombre: "Juancho", telefono: "12345"),
        ContactoAgenda(nombre: "Juancho", telefono: "12345"),
        ContactoAgenda(nombre: "Juancho", telefono: "12345"),
        ContactoAgenda(nombre: "Juancho", telefono: "12345")
    ]
    
    var body: some View {
        
        ScrollView{
            Spacer()
            
            Text("Mis contactos")
            
            VStack(spacing:10) {
                Spacer()
                ForEach(contactos_actuales){ contacto in //bucle que craga 25 veces la vista
                    //Text("\(contacto.nombre)")
                    ContactoPrevista(contacto_a_mostrar: contacto, al_pulsar: {print("Te envia saludas \(contacto.nombre) desde pantalla agenda")})
                }
               
            }
            
            .frame(alignment: Alignment.center)
            .padding(10)
            //.background(Color.cyan)
        }
        .background(Color.white)
        
        HStack(alignment: VerticalAlignment.center, spacing: 25)
        {
            Spacer()
            
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 60)
                    .foregroundColor(.white)
                Image(systemName: "plus")
                    .background(Color.white)
                    //.offset(x: 0, y: -20) posicion 
            }
            .padding(15)
            .onTapGesture {
                print("Falta implememtar seccion agregar contacto")
                mostrar_pantalla_agregar_contacto.toggle()
            }
            
            Spacer()
            
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 65)
                    .foregroundColor(.white)
                Image(systemName: "shuffle")
                    .background(Color.white)
            }
            .padding(15)
            .onTapGesture {
                print("intente para lanzar llamada")
            }
            
            Spacer()
            
        }.background(Color.green)
            .sheet(isPresented: $mostrar_pantalla_agregar_contacto){
                PantallaAgregarContacto(boton_salir: {
                    mostrar_pantalla_agregar_contacto.toggle()
                }, boton_agregar: {nombre, numero in
                    let contacto_nuevo = ContactoAgenda(nombre: nombre, telefono: numero)
                    contactos_actuales.append(contacto_nuevo)
                    mostrar_pantalla_agregar_contacto.toggle()
                    
                })
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Sheet Content")/*@END_MENU_TOKEN@*/
            }
        
    }
}

#Preview {
    pantalla_agenda()
}
