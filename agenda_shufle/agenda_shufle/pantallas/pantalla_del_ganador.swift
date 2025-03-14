//

//  pantalla_del_ganador.swift

//  agenda_shufle

//

//  Created by alumno on 3/5/25.

//

 

import SwiftUI

 

var contacto_alterno = ContactoAgenda(nombre: "Juanita", telefono: "656 7432")

 

struct pantallaDelGanador: View {

    var contacto_a_molestar: ContactoAgenda

    var body: some View {

         

        VStack(alignment: HorizontalAlignment.center, spacing: 40){

         

                ZStack{

                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/) 

                        .frame(width: 300, height: 450)

                        .foregroundColor(Color(red: 1, green:1, blue: 1, opacity: 0.5))

                    VStack(alignment: HorizontalAlignment.center){

                        Image("Imagen")

                            .resizable()

                            .aspectRatio(contentMode: .fit)

                            .frame(width: 200,

                                   alignment: .center)

               

                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

                         

                        Text(contacto_a_molestar.nombre)

                        Text(contacto_a_molestar.telefono)

                         

                    }.font(.custom("Courier",size: 25))

                     

                }

                 

                HStack(alignment: VerticalAlignment.center, spacing: 35){

                    Spacer()

                    ZStack{

                        Circle()

                            .frame(width: 100)

                            .foregroundColor(Color(red: 1, green:1, blue: 1, opacity: 0.5))

                        Image(systemName: "phone.circle.fill")

                            .frame(width: 100)

                           

                    }

                     

                     

                    ZStack{

                        Circle()

                            .frame(width: 100)

                            .foregroundColor(Color(red: 1, green:1, blue: 1, opacity: 0.5))

                        Image(systemName: "arrowshape.turn.up.backward.circle.fill")

                            .frame(width: 100)

                    }

                     

                    Spacer()

                }  .font(.system(size: 40))

        }

        .frame(maxWidth: .infinity, maxHeight: .infinity)

        .background(Color(red: 0.4, green: 0.6, blue: 0.2))

         

         

    }

         

}

 

#Preview {

    pantallaDelGanador(contacto_a_molestar: contacto_alterno)

}
