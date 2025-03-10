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

enum PantallasDisponibles: String, Identifiable{
    case pantalla_agegar, pantalla_aleatorio
    
    var id: String{ rawValue }
    
}
struct pantalla_agenda: View {
    
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.height
    
    
    @State var contactos_actuales: [ContactoAgenda] = [
        ContactoAgenda(nombre: "Juancho", telefono: "12345"),
        ContactoAgenda(nombre: "Juancho", telefono: "12345"),
        ContactoAgenda(nombre: "Juancho", telefono: "12345"),
        ContactoAgenda(nombre: "Juancho", telefono: "12345")
    ]
    
    @State var pantalla_a_mostrar: PantallasDisponibles?
    
    var body: some View {
        
        ScrollView{
            Spacer()
            
            Text("Mis contactos")
            
            VStack(spacing:10) {
                Spacer()
                ForEach(contactos_actuales){ contacto in
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
                print("Se agrego un contacto")
                pantalla_a_mostrar = PantallasDisponibles.pantalla_agegar
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
                pantalla_a_mostrar = PantallasDisponibles.pantalla_aleatorio
            }
            
            Spacer()
            
        }.background(Color.green)
            .sheet(item: $pantalla_a_mostrar){ pantalla in
                switch (pantalla){
                case .pantalla_agegar:
                    PantallaAgregarContacto(
                        boton_salir: {
                            pantalla_a_mostrar = PantallasDisponibles.pantalla_aleatorio
                        },
                        boton_agregar: {nombre, numero in 
                            let contacto_nuevo = ContactoAgenda(nombre:nombre, telefono: numero)
                            contactos_actuales.append(contacto_nuevo)
                            pantalla_a_mostrar = nil
                        }
                    )
                    
                case .pantalla_aleatorio:
                    Text("aaaaaaaaa")
                }
            }
    }
}

#Preview {
    pantalla_agenda()
}
