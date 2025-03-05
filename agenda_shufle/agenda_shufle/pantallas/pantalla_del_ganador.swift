//
//  pantalla_del_ganador.swift
//  agenda_shufle
//
//  Created by alumno on 3/5/25.
//

import SwiftUI

var contacto_alterno = ContactoAgenda(nombre: "juanita", telefono: "656 7432")

struct pantalla_del_ganador: View {
    var contacto_a_molestar: ContactoAgenda
    var body: some View {
        
        HStack{
            Image("Imagen")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120,
                       alignment: .center)
                .background(Color.green)
            
            VStack{
                Text(contacto_a_molestar.nombre)
                Text(contacto_a_molestar.telefono)
            }
            
        }.background(Color.green)
    }
        
}

#Preview {
    pantalla_del_ganador(contacto_a_molestar: contacto_alterno)
}
