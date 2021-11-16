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
    var Tipo: String
    var Fecha: Date
    
    init (nombre: String, monto: Double, fecha: Date, tipo: String)
    {
        self.Nombre = nombre
        self.Monto = monto
        self.Fecha = fecha
        self.Tipo = tipo
    }
    
}
