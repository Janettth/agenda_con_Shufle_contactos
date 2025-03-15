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

        VStack(alignment: HorizontalAlignment.leading){
            
            
            VStack(alignment: HorizontalAlignment.leading, spacing: 10){

                Text("Nombre:").bold()

                ZStack{

                    RoundedRectangle(cornerRadius:40)

                        .frame(maxWidth: .infinity, maxHeight: 75)

                        .foregroundColor(Color(red: 1, green:1, blue: 1, opacity: 0.5))

                     

                    TextField("Nombre", text: $nombre)
                        .padding(20)

                         

                }

            }.padding()

                  .background(Color(red: 0.4, green: 0.6, blue: 0.2))
            
            
            
            
            VStack(alignment: HorizontalAlignment.leading){

                Text("Numero de teléfono").bold()

                ZStack{

                    RoundedRectangle(cornerRadius:40)

                        .frame(maxWidth: .infinity, maxHeight: 75)

                        .foregroundColor(Color(red: 1, green:1, blue: 1, opacity: 0.5))

                    TextField("656 xxxx xxx", text: $numeroTelefonico)
                        .padding(20)

                }

            }.padding()

                  .background(Color(red: 0.4, green: 0.6, blue: 0.2))
            
            

       HStack(alignment: VerticalAlignment.center, spacing: 50){
           
           Spacer()
           
           ZStack{
               
               RoundedRectangle(cornerRadius: 40)
               
                   .frame(width: 80, height: 80)
               
                   .foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.5))
               
               //icono para agregr contacto
               
               Icono(tamaño: 35, ruta_icono:
                       
                       "person.fill.badge.plus",
                     
                     padding: 10)
               
               .onTapGesture {
                   
                   boton_agregar(nombre, numeroTelefonico)
                   
               }
               
           }
           
       

            

           ZStack{

               RoundedRectangle(cornerRadius: 40)

                   .frame(width: 80, height: 80)

                   .foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.5))

               //icono para salir de pantalla

               Icono(tamaño: 35, ruta_icono:"arrowshape.turn.up.backward.circle.fill")

                   .background(nombre == "" ? Color.clear: Color.clear)

                   .onTapGesture {

                       boton_salir()

                   }

           }

           Spacer()

       }
            
        }       .frame(maxWidth: .infinity, maxHeight: .infinity)
        
            .background(Color(red: 0.4, green: 0.6, blue: 0.2))

         

    }

    }


 

#Preview {

    PantallaAgregarContacto()

}

 
