//
//  contacto_agenda.swift
//  agenda_shufle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI

struct ContactoAgenda: Identifiable {
    
    var nombre: String
    var telefono: String
    
    var id: String {nombre}
}

/*
var nombre = "pepito veraz"

var nombre: set{
    let nombre_validado = filtrar_plabras(value):
    nombre = nombre_validado
} get{
    return nombre.split("")[0]
}*/



