//
//  contacto_prevista.swift
//  agenda_shufle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI

let contacto_prueba = ContactoAgenda(nombre: "Juanchoooo", telefono: "12345")

struct ContactoPrevista: View {
    var contacto_a_mostrar: ContactoAgenda
    
    var al_pulsar: () -> Void = {print("no se ha implementado")}
    
    let esquinas_redondeadas = CGSize(width: 20, height: 20)
    
    var body: some View {
        HStack(alignment: VerticalAlignment.center){
            Spacer()
            
            VStack{
                Image("Imagen")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75,
                           alignment: .center)
                    .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
                    .background(Color.blue)
                
            }.background(Color.white)
            
            Spacer()
            
            VStack(alignment: HorizontalAlignment.leading,
                   spacing: 10){
                Text(contacto_a_mostrar.nombre)
                Text(contacto_a_mostrar.telefono)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray)
            
            
            Spacer()
           
        }
        .frame(maxWidth: .infinity) //dibuja un rectanculo especifico
        .background(Color.red)
        .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
        .onTapGesture {
            al_pulsar()
        }
        
    }
}

#Preview {
    ContactoPrevista(contacto_a_mostrar: contacto_prueba)
}
