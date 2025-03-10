//
//  pantalla_del_ganador.swift
//  agenda_shufle
//
//  Created by alumno on 3/5/25.
//

import SwiftUI

var contacto_alterno = ContactoAgenda(nombre: "juanita", telefono: "656 7432")

struct pantallaDelGanador: View {
    var contacto_a_molestar: ContactoAgenda
    var body: some View {
        
        VStack(alignment: HorizontalAlignment.center, spacing: 20){
            Image("Imagen")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120,
                       alignment: .center)
                .background(Color.green)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            
            VStack(spacing: 10){
                Text(contacto_a_molestar.nombre)
                
                Text(contacto_a_molestar.telefono)
            }.font(.system(size: 25))
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green)
    }
        
}

#Preview {
    pantallaDelGanador(contacto_a_molestar: contacto_alterno)
}
