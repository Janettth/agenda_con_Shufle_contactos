//
//  pantalla_agenda.swift
//  agenda_shufle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI

struct pantalla_agenda: View {
    var body: some View {
        List{
            VStack {
                ForEach(0...25, id: \.self){ _ in //bucle que craga 25 veces la vista
                    ContactoPrevista()
                }
               
            }
            .background(Color.cyan)
        }
        
        
    }
}

#Preview {
    pantalla_agenda()
}
