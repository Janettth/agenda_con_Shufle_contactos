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
        ContactoAgenda(nombre: "Juancho", telefono: "656 456 7789"),
        ContactoAgenda(nombre: "María", telefono: "656 123 4565"),
        ContactoAgenda(nombre: "Antonia", telefono: "656 345 762"),
        ContactoAgenda(nombre: "Alicia", telefono: "656 879 003"),
        ContactoAgenda(nombre: "Fernando", telefono: "656 345 700"),
        ContactoAgenda(nombre: "Dorotea", telefono: "656 354 009"),
        ContactoAgenda(nombre: "Inmaculada", telefono: "656 423 761"),
    ]
    
    @State var pantalla_a_mostrar: PantallasDisponibles?
    
    var body: some View {
        
        VStack{
            
            Text("Mis Contactos").font(.system(size: 30)).padding()
            NavigationStack{
                ScrollView{
                    VStack(spacing:10) {
                        ForEach(contactos_actuales){ contacto in
                            NavigationLink{
                                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10){
                                    Text("Hola soy " + contacto.nombre)
                                    Text("Llamame al  " + contacto.telefono)
                                }   .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .background(Color(red: 0.4, green: 0.6, blue: 0.2))
                                    .foregroundColor(.white).font(.system(size: 20))
                                
                            }label: {
                                //Text("\(contacto.nombre)")
                                ContactoPrevista(contacto_a_mostrar: contacto, al_pulsar: {print("Te envia saludas \(contacto.nombre) desde pantalla agenda")})
                            }
                            
                        }
                        
                    }
                    
                    .frame(alignment: Alignment.center)
                    .padding(10)
                    //.background(Color.cyan)
                }
                .background(Color.white)
            }
            
            //fin del sroll view
            
            HStack(alignment: VerticalAlignment.center, spacing: 25)
            {
                Spacer()
                
                ZStack{
                    Circle()
                        .frame(width: 100)
                        .foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.5))
                    Circle()
                        .frame(width: 60)
                        .foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.5))
                    Image(systemName: "plus")
                        .background(Color.clear)
                        .font(.system(size: 25))
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
                        .foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.5))
                    Circle()
                        .frame(width: 65)
                        .foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.5))
                    Image(systemName: "shuffle")
                        .background(Color.clear)
                        .font(.system(size: 25))
                }
                .padding(15)
                .onTapGesture {
                    print("intente para lanzar llamada")
                    pantalla_a_mostrar = PantallasDisponibles.pantalla_aleatorio
                }
                
                Spacer()
                
            }.background(Color(red: 0.4, green: 0.6, blue: 0.2))
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
                        pantallaDelGanador(contacto_a_molestar: ContactoAgenda(nombre: "Juanita", telefono: "656 7432"))
                    }
                }
        }
    }
}

#Preview {
    pantalla_agenda()
}
