//
//  Meta.swift
//  Mr-Cash
//
//  Created by Alek Howland on 16/11/21.
//

import Foundation

class Meta
{
    var Nombre: String
    var Monto: Double
    var Tipo: Tipo
    var Fecha: Date
    
    init (nombre: String, monto: Double, fecha: Date, tipo: Tipo)
    {
        self.Nombre = nombre
        self.Monto = monto
        self.Fecha = fecha
        self.Tipo = tipo
    }
    
}

enum Tipo {
    case ENTRETENIMIENTO
    case HOGAR
    case TRABAJO
    case EDUCACIÓN
}
