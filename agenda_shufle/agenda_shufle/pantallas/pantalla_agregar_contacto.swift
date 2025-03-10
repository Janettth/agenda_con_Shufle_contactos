//
//  pantalla_agregar_contacto.swift
//  agenda_shufle
//
//  Created by alumno on 3/3/25.
//

import SwiftUI

struct PantallaAgregarContacto: View {
    @State private var nombre: String = ""
    @State private var numeroTelefonico: String = ""
    
    var boton_salir: () -> Void = {
        print("Saliendooo")
    }
    
    var boton_agregar: (_ nombre: String, _ numero: String) -> Void = { nombre, numero in
        print("Agregarndoooo")
    }
    
    var body: some View {
        Text("Nombre:")
        ZStack{
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 75)
                .foregroundColor(.white)
            
            TextField("Nombre", text: $nombre)
                .padding(30)
        }
        
        Text("Numero de teléfono")
        TextField("656 xxxx xxx", text: $numeroTelefonico)
            .frame(height:35)
            .padding(30)
        
        
        HStack{
            Spacer()
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundColor(.green)
                //icono para agregr contacto
                Icono(tamaño: 65, ruta_icono:
                        "person.crop.circle.badge.plus",
                      padding: 10)
                .onTapGesture {
                    boton_agregar(nombre, numeroTelefonico)
                }
            }
            
            Spacer()
            
            HStack{
                
            }
            
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundColor(.green)
                //icono para salir de pantalla
                Icono(tamaño: 65, ruta_icono:"return")
                    .background(nombre == "" ? Color.clear: Color.clear)
                    .onTapGesture {
                        boton_salir()
                    }
            }
            Spacer()
        }
        
        
    }
}

#Preview {
    PantallaAgregarContacto()
}
