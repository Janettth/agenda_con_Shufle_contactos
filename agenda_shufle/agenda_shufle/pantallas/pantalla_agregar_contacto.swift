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
    var body: some View {
        Text("Colocar etiqueta nombre")
        ZStack{
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 75)
                .foregroundColor(.green)
            
            TextField("Place holder", text: $nombre)
                .padding(10)
        }
    
        Text("colocar numero de tel")
        TextField("Place holder numeros", text: $numeroTelefonico)
            .frame(height:35)
            .padding(10)
        
        HStack{
            Icono(tamaño: 65, ruta_icono:
                    "person.crop.circle.badge.plus",
                    padding: 10
            )
            
            Spacer()
            
            Icono(tamaño: 65, ruta_icono:"return")
                .background(nombre == "" ? Color.red:
                            Color.cyan)
        }
        .background(Color.cyan)
       
    }
}

#Preview {
    PantallaAgregarContacto()
}
